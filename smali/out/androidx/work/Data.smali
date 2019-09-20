.class public final Landroidx/work/Data;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Data$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroidx/work/Data;

.field public static final MAX_DATA_BYTES:I = 0x2800

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Data"

    .line 48
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/Data;->TAG:Ljava/lang/String;

    .line 53
    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    sput-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/work/Data;)V
    .registers 3
    .param p1    # Landroidx/work/Data;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .registers 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    return-void
.end method

.method static convertPrimitiveBooleanArray([Z)[Ljava/lang/Boolean;
    .registers 4
    .param p0    # [Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 417
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 418
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 419
    aget-boolean v2, p0, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method static convertPrimitiveDoubleArray([D)[Ljava/lang/Double;
    .registers 5
    .param p0    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 453
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    .line 454
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 455
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method static convertPrimitiveFloatArray([F)[Ljava/lang/Float;
    .registers 4
    .param p0    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 444
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Float;

    const/4 v1, 0x0

    .line 445
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 446
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method static convertPrimitiveIntArray([I)[Ljava/lang/Integer;
    .registers 4
    .param p0    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 426
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 427
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 428
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method static convertPrimitiveLongArray([J)[Ljava/lang/Long;
    .registers 5
    .param p0    # [J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 435
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    .line 436
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 437
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method public static fromByteArray([B)Landroidx/work/Data;
    .registers 7
    .param p0    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 366
    array-length v0, p0

    const/16 v1, 0x2800

    if-le v0, v1, :cond_d

    .line 367
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Data cannot occupy more than 10240 bytes when serialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 371
    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 372
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    .line 375
    :try_start_18
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_49
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_1d} :catch_49
    .catchall {:try_start_18 .. :try_end_1d} :catchall_45

    .line 376
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    :goto_21
    if-lez p0, :cond_31

    .line 377
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2e} :catch_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d .. :try_end_2e} :catch_43
    .catchall {:try_start_1d .. :try_end_2e} :catchall_74

    add-int/lit8 p0, p0, -0x1

    goto :goto_21

    :cond_31
    if-eqz v2, :cond_3f

    .line 384
    :try_start_33
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception p0

    .line 386
    sget-object v2, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v3, "Error in Data#fromByteArray: "

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    :cond_3f
    :goto_3f
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_66

    goto :goto_6e

    :catch_43
    move-exception p0

    goto :goto_4d

    :catchall_45
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    goto :goto_75

    :catch_49
    move-exception v2

    move-object v5, v2

    move-object v2, p0

    move-object p0, v5

    .line 380
    :goto_4d
    :try_start_4d
    sget-object v3, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v4, "Error in Data#fromByteArray: "

    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_74

    if-eqz v2, :cond_62

    .line 384
    :try_start_56
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_62

    :catch_5a
    move-exception p0

    .line 386
    sget-object v2, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v3, "Error in Data#fromByteArray: "

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    :cond_62
    :goto_62
    :try_start_62
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6e

    :catch_66
    move-exception p0

    .line 392
    sget-object v1, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v2, "Error in Data#fromByteArray: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    :goto_6e
    new-instance p0, Landroidx/work/Data;

    invoke-direct {p0, v0}, Landroidx/work/Data;-><init>(Ljava/util/Map;)V

    return-object p0

    :catchall_74
    move-exception p0

    :goto_75
    if-eqz v2, :cond_83

    .line 384
    :try_start_77
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_83

    :catch_7b
    move-exception v0

    .line 386
    sget-object v2, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v3, "Error in Data#fromByteArray: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    :cond_83
    :goto_83
    :try_start_83
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_8f

    :catch_87
    move-exception v0

    .line 392
    sget-object v1, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v2, "Error in Data#fromByteArray: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    :goto_8f
    throw p0
.end method

.method public static toByteArray(Landroidx/work/Data;)[B
    .registers 5
    .param p0    # Landroidx/work/Data;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 321
    :try_start_6
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_70
    .catchall {:try_start_6 .. :try_end_b} :catchall_6d

    .line 322
    :try_start_b
    invoke-virtual {p0}, Landroidx/work/Data;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 323
    iget-object p0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 324
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 325
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_38} :catch_6a
    .catchall {:try_start_b .. :try_end_38} :catchall_68

    goto :goto_1c

    :cond_39
    if-eqz v2, :cond_47

    .line 335
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception p0

    .line 337
    sget-object v1, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v2, "Error in Data#toByteArray: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    :cond_47
    :goto_47
    :try_start_47
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_53

    :catch_4b
    move-exception p0

    .line 343
    sget-object v1, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v2, "Error in Data#toByteArray: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    :goto_53
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    const/16 v1, 0x2800

    if-le p0, v1, :cond_63

    .line 348
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Data cannot occupy more than 10240 bytes when serialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 352
    :cond_63
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_68
    move-exception p0

    goto :goto_97

    :catch_6a
    move-exception p0

    move-object v1, v2

    goto :goto_71

    :catchall_6d
    move-exception p0

    move-object v2, v1

    goto :goto_97

    :catch_70
    move-exception p0

    .line 328
    :goto_71
    :try_start_71
    sget-object v2, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v3, "Error in Data#toByteArray: "

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_6d

    if-eqz v1, :cond_8a

    .line 335
    :try_start_7e
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_8a

    :catch_82
    move-exception v1

    .line 337
    sget-object v2, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v3, "Error in Data#toByteArray: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    :cond_8a
    :goto_8a
    :try_start_8a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_96

    :catch_8e
    move-exception v0

    .line 343
    sget-object v1, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v2, "Error in Data#toByteArray: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_96
    return-object p0

    :goto_97
    if-eqz v2, :cond_a5

    .line 335
    :try_start_99
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_a5

    :catch_9d
    move-exception v1

    .line 337
    sget-object v2, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v3, "Error in Data#toByteArray: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    :cond_a5
    :goto_a5
    :try_start_a5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_b1

    :catch_a9
    move-exception v0

    .line 343
    sget-object v1, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v2, "Error in Data#toByteArray: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    :goto_b1
    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 403
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 406
    :cond_11
    check-cast p1, Landroidx/work/Data;

    .line 407
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    iget-object p1, p1, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 84
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    .line 85
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_11
    return p2
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 98
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 99
    instance-of v0, p1, [Ljava/lang/Boolean;

    if-eqz v0, :cond_1f

    .line 100
    check-cast p1, [Ljava/lang/Boolean;

    .line 101
    array-length v0, p1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 102
    :goto_10
    array-length v2, p1

    if-ge v1, v2, :cond_1e

    .line 103
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    return-object v0

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 228
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 229
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_11

    .line 230
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_11
    return-wide p2
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 243
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 244
    instance-of v0, p1, [Ljava/lang/Double;

    if-eqz v0, :cond_1f

    .line 245
    check-cast p1, [Ljava/lang/Double;

    .line 246
    array-length v0, p1

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 247
    :goto_10
    array-length v2, p1

    if-ge v1, v2, :cond_1e

    .line 248
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    return-object v0

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 192
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 193
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_11

    .line 194
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_11
    return p2
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 207
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 208
    instance-of v0, p1, [Ljava/lang/Float;

    if-eqz v0, :cond_1f

    .line 209
    check-cast p1, [Ljava/lang/Float;

    .line 210
    array-length v0, p1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 211
    :goto_10
    array-length v2, p1

    if-ge v1, v2, :cond_1e

    .line 212
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    return-object v0

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 120
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 121
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_11

    .line 122
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_11
    return p2
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 135
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 136
    instance-of v0, p1, [Ljava/lang/Integer;

    if-eqz v0, :cond_1f

    .line 137
    check-cast p1, [Ljava/lang/Integer;

    .line 138
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 139
    :goto_10
    array-length v2, p1

    if-ge v1, v2, :cond_1e

    .line 140
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    return-object v0

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKeyValueMap()Ljava/util/Map;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 156
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 157
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_11

    .line 158
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_11
    return-wide p2
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 171
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 172
    instance-of v0, p1, [Ljava/lang/Long;

    if-eqz v0, :cond_1f

    .line 173
    check-cast p1, [Ljava/lang/Long;

    .line 174
    array-length v0, p1

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 175
    :goto_10
    array-length v2, p1

    if-ge v1, v2, :cond_1e

    .line 176
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    return-object v0

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 263
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 264
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 265
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 278
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 279
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 280
    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 412
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public size()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 303
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
