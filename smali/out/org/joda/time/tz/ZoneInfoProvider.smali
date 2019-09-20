.class public Lorg/joda/time/tz/ZoneInfoProvider;
.super Ljava/lang/Object;
.source "ZoneInfoProvider.java"

# interfaces
.implements Lorg/joda/time/tz/Provider;


# instance fields
.field private final iFileDir:Ljava/io/File;

.field private final iLoader:Ljava/lang/ClassLoader;

.field private final iResourcePath:Ljava/lang/String;

.field private final iZoneInfoKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final iZoneInfoMap:Ljava/util/Map;
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
.method public constructor <init>(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    .line 61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No file directory provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_d
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 64
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File directory doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_2a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_47

    .line 67
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File doesn\'t refer to a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_47
    iput-object p1, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iFileDir:Ljava/io/File;

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iResourcePath:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iLoader:Ljava/lang/ClassLoader;

    const-string p1, "ZoneInfoMap"

    .line 74
    invoke-direct {p0, p1}, Lorg/joda/time/tz/ZoneInfoProvider;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lorg/joda/time/tz/ZoneInfoProvider;->loadZoneInfoMap(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iZoneInfoMap:Ljava/util/Map;

    .line 75
    new-instance p1, Ljava/util/TreeSet;

    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iZoneInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iZoneInfoKeys:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, v0, v1}, Lorg/joda/time/tz/ZoneInfoProvider;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/tz/ZoneInfoProvider;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    .line 112
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No resource path provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    const-string v0, "/"

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_26
    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iFileDir:Ljava/io/File;

    .line 119
    iput-object p1, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iResourcePath:Ljava/lang/String;

    if-nez p2, :cond_37

    if-nez p3, :cond_37

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 125
    :cond_37
    iput-object p2, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iLoader:Ljava/lang/ClassLoader;

    const-string p1, "ZoneInfoMap"

    .line 127
    invoke-direct {p0, p1}, Lorg/joda/time/tz/ZoneInfoProvider;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lorg/joda/time/tz/ZoneInfoProvider;->loadZoneInfoMap(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iZoneInfoMap:Ljava/util/Map;

    .line 128
    new-instance p1, Ljava/util/TreeSet;

    iget-object p2, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iZoneInfoMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iZoneInfoKeys:Ljava/util/Set;

    return-void
.end method

.method private loadZoneData(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    .registers 7

    const/4 v0, 0x0

    .line 225
    :try_start_1
    invoke-direct {p0, p1}, Lorg/joda/time/tz/ZoneInfoProvider;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_20
    .catchall {:try_start_1 .. :try_end_5} :catchall_1d

    .line 226
    :try_start_5
    invoke-static {v1, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readFrom(Ljava/io/InputStream;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v2

    .line 227
    iget-object v3, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iZoneInfoMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_1b
    .catchall {:try_start_5 .. :try_end_13} :catchall_19

    if-eqz v1, :cond_18

    .line 236
    :try_start_15
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_18

    :catch_18
    :cond_18
    return-object v2

    :catchall_19
    move-exception p1

    goto :goto_30

    :catch_1b
    move-exception v2

    goto :goto_22

    :catchall_1d
    move-exception p1

    move-object v1, v0

    goto :goto_30

    :catch_20
    move-exception v2

    move-object v1, v0

    .line 230
    :goto_22
    :try_start_22
    invoke-virtual {p0, v2}, Lorg/joda/time/tz/ZoneInfoProvider;->uncaughtException(Ljava/lang/Exception;)V

    .line 231
    iget-object v2, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iZoneInfoMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_19

    if-eqz v1, :cond_2f

    .line 236
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_2f

    :catch_2f
    :cond_2f
    return-object v0

    :goto_30
    if-eqz v1, :cond_35

    :try_start_32
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_35

    .line 239
    :catch_35
    :cond_35
    throw p1
.end method

.method private static loadZoneInfoMap(Ljava/io/InputStream;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 252
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 254
    :try_start_a
    invoke-static {v1, v0}, Lorg/joda/time/tz/ZoneInfoProvider;->readZoneInfoMap(Ljava/io/DataInputStream;Ljava/util/Map;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1d

    .line 257
    :try_start_d
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_10

    :catch_10
    const-string p0, "UTC"

    .line 261
    new-instance v1, Ljava/lang/ref/SoftReference;

    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catchall_1d
    move-exception p0

    .line 257
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_21

    .line 259
    :catch_21
    throw p0
.end method

.method private openResource(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iFileDir:Ljava/io/File;

    if-eqz v0, :cond_11

    .line 196
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iFileDir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_56

    .line 198
    :cond_11
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iResourcePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_22

    .line 200
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_26

    .line 202
    :cond_22
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_26
    if-nez v0, :cond_56

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Resource not found: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" ClassLoader: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iLoader:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_47

    iget-object p1, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    :cond_47
    const-string p1, "system"

    :goto_49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_56
    :goto_56
    return-object v0
.end method

.method private static readZoneInfoMap(Ljava/io/DataInputStream;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 274
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_17

    .line 276
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 280
    :cond_17
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    :goto_1b
    if-ge v2, v0, :cond_37

    .line 283
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    aget-object v3, v1, v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    aget-object v4, v1, v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1d .. :try_end_2c} :catch_2f

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 285
    :catch_2f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Corrupt zone info map"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    return-void
.end method


# virtual methods
.method public getAvailableIDs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iZoneInfoKeys:Ljava/util/Set;

    return-object v0
.end method

.method public getZone(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 144
    :cond_4
    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iZoneInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v0

    .line 149
    :cond_d
    instance-of v0, v1, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_21

    .line 151
    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 152
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeZone;

    if-eqz v0, :cond_1c

    return-object v0

    .line 157
    :cond_1c
    invoke-direct {p0, p1}, Lorg/joda/time/tz/ZoneInfoProvider;->loadZoneData(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    return-object p1

    .line 158
    :cond_21
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 160
    invoke-direct {p0, p1}, Lorg/joda/time/tz/ZoneInfoProvider;->loadZoneData(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    return-object p1

    .line 164
    :cond_2c
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/joda/time/tz/ZoneInfoProvider;->getZone(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    return-object p1
.end method

.method protected uncaughtException(Ljava/lang/Exception;)V
    .registers 2

    .line 182
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
