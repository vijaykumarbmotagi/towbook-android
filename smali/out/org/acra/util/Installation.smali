.class public Lorg/acra/util/Installation;
.super Ljava/lang/Object;
.source "Installation.java"


# static fields
.field private static final INSTALLATION:Ljava/lang/String; = "ACRA-INSTALLATION"

.field private static sID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized id(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-class v0, Lorg/acra/util/Installation;

    monitor-enter v0

    .line 35
    :try_start_3
    sget-object v1, Lorg/acra/util/Installation;->sID:Ljava/lang/String;

    if-nez v1, :cond_60

    .line 36
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "ACRA-INSTALLATION"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_64

    .line 38
    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 39
    invoke-static {v1}, Lorg/acra/util/Installation;->writeInstallationFile(Ljava/io/File;)V

    .line 41
    :cond_1b
    invoke-static {v1}, Lorg/acra/util/Installation;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/acra/util/Installation;->sID:Ljava/lang/String;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_21} :catch_41
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_21} :catch_22
    .catchall {:try_start_12 .. :try_end_21} :catchall_64

    goto :goto_60

    :catch_22
    move-exception v1

    .line 46
    :try_start_23
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t retrieve InstallationId for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "Couldn\'t retrieve InstallationId"
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_64

    .line 47
    monitor-exit v0

    return-object p0

    :catch_41
    move-exception v1

    .line 43
    :try_start_42
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t retrieve InstallationId for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "Couldn\'t retrieve InstallationId"
    :try_end_5e
    .catchall {:try_start_42 .. :try_end_5e} :catchall_64

    .line 44
    monitor-exit v0

    return-object p0

    .line 50
    :cond_60
    :goto_60
    :try_start_60
    sget-object p0, Lorg/acra/util/Installation;->sID:Ljava/lang/String;
    :try_end_62
    .catchall {:try_start_60 .. :try_end_62} :catchall_64

    monitor-exit v0

    return-object p0

    :catchall_64
    move-exception p0

    .line 34
    monitor-exit v0

    throw p0
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    long-to-int p0, v1

    new-array p0, p0, [B

    .line 57
    :try_start_e
    invoke-virtual {v0, p0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1a

    .line 59
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 61
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :catchall_1a
    move-exception p0

    .line 59
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    throw p0
.end method

.method private static writeInstallationFile(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 67
    :try_start_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 70
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_18
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw p0
.end method
