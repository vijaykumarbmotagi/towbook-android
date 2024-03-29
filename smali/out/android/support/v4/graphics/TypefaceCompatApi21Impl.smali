.class Landroid/support/v4/graphics/TypefaceCompatApi21Impl;
.super Landroid/support/v4/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi21Impl.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi21Impl"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    .line 50
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/self/fd/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget v1, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 53
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_2b} :catch_2d

    return-object v1

    :cond_2c
    return-object v0

    :catch_2d
    return-object v0
.end method


# virtual methods
.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 9
    .param p3    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    return-object v1

    .line 68
    :cond_6
    invoke-virtual {p0, p3, p4}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->findBestInfo([Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object p3

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    .line 71
    :try_start_e
    invoke-virtual {p3}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object p3

    const-string v0, "r"

    invoke-virtual {p4, p3, v0, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_7b

    .line 72
    :try_start_18
    invoke-direct {p0, p2}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_2f

    .line 73
    invoke-virtual {p3}, Ljava/io/File;->canRead()Z

    move-result p4

    if-nez p4, :cond_25

    goto :goto_2f

    .line 80
    :cond_25
    invoke-static {p3}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_29} :catch_64
    .catchall {:try_start_18 .. :try_end_29} :catchall_61

    if-eqz p2, :cond_2e

    .line 81
    :try_start_2b
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_7b

    :cond_2e
    return-object p1

    .line 76
    :cond_2f
    :goto_2f
    :try_start_2f
    new-instance p3, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_38} :catch_64
    .catchall {:try_start_2f .. :try_end_38} :catchall_61

    .line 77
    :try_start_38
    invoke-super {p0, p1, p3}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3c} :catch_4a
    .catchall {:try_start_38 .. :try_end_3c} :catchall_47

    if-eqz p3, :cond_41

    .line 78
    :try_start_3e
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_64
    .catchall {:try_start_3e .. :try_end_41} :catchall_61

    :cond_41
    if-eqz p2, :cond_46

    .line 81
    :try_start_43
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_7b

    :cond_46
    return-object p1

    :catchall_47
    move-exception p1

    move-object p4, v1

    goto :goto_50

    :catch_4a
    move-exception p1

    .line 76
    :try_start_4b
    throw p1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p4

    move-object v3, p4

    move-object p4, p1

    move-object p1, v3

    :goto_50
    if-eqz p3, :cond_60

    if-eqz p4, :cond_5d

    .line 78
    :try_start_54
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_58
    .catchall {:try_start_54 .. :try_end_57} :catchall_61

    goto :goto_60

    :catch_58
    move-exception p3

    :try_start_59
    invoke-virtual {p4, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_60

    :cond_5d
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V

    :cond_60
    :goto_60
    throw p1
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_61} :catch_64
    .catchall {:try_start_59 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p1

    move-object p3, v1

    goto :goto_6a

    :catch_64
    move-exception p1

    .line 70
    :try_start_65
    throw p1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p3

    move-object v3, p3

    move-object p3, p1

    move-object p1, v3

    :goto_6a
    if-eqz p2, :cond_7a

    if-eqz p3, :cond_77

    .line 81
    :try_start_6e
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_72
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_7b

    goto :goto_7a

    :catch_72
    move-exception p2

    :try_start_73
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7a

    :cond_77
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_7a
    :goto_7a
    throw p1
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7b} :catch_7b

    :catch_7b
    return-object v1
.end method
