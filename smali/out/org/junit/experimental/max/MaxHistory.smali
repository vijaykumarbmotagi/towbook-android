.class public Lorg/junit/experimental/max/MaxHistory;
.super Ljava/lang/Object;
.source "MaxHistory.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/experimental/max/MaxHistory$TestComparator;,
        Lorg/junit/experimental/max/MaxHistory$RememberingListener;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fDurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final fFailureTimestamps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final fHistoryStore:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/junit/experimental/max/MaxHistory;->fDurations:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/junit/experimental/max/MaxHistory;->fFailureTimestamps:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Lorg/junit/experimental/max/MaxHistory;->fHistoryStore:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lorg/junit/experimental/max/MaxHistory;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lorg/junit/experimental/max/MaxHistory;->save()V

    return-void
.end method

.method public static forFolder(Ljava/io/File;)Lorg/junit/experimental/max/MaxHistory;
    .registers 2

    .line 34
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 36
    :try_start_6
    invoke-static {p0}, Lorg/junit/experimental/max/MaxHistory;->readHistory(Ljava/io/File;)Lorg/junit/experimental/max/MaxHistory;

    move-result-object v0
    :try_end_a
    .catch Lorg/junit/experimental/max/CouldNotReadCoreException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 38
    invoke-virtual {v0}, Lorg/junit/experimental/max/CouldNotReadCoreException;->printStackTrace()V

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 42
    :cond_12
    new-instance v0, Lorg/junit/experimental/max/MaxHistory;

    invoke-direct {v0, p0}, Lorg/junit/experimental/max/MaxHistory;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private static readHistory(Ljava/io/File;)Lorg/junit/experimental/max/MaxHistory;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/max/CouldNotReadCoreException;
        }
    .end annotation

    .line 48
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_21

    .line 50
    :try_start_5
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1c

    .line 52
    :try_start_a
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/experimental/max/MaxHistory;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_17

    .line 54
    :try_start_10
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1c

    .line 57
    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_21

    return-object v1

    :catchall_17
    move-exception v1

    .line 54
    :try_start_18
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    throw v1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p0

    .line 57
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_21

    :catch_21
    move-exception p0

    .line 60
    new-instance v0, Lorg/junit/experimental/max/CouldNotReadCoreException;

    invoke-direct {v0, p0}, Lorg/junit/experimental/max/CouldNotReadCoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private save()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/junit/experimental/max/MaxHistory;->fHistoryStore:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 80
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    return-void
.end method


# virtual methods
.method getFailureTimestamp(Lorg/junit/runner/Description;)Ljava/lang/Long;
    .registers 3

    .line 85
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory;->fFailureTimestamps:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method getTestDuration(Lorg/junit/runner/Description;)Ljava/lang/Long;
    .registers 3

    .line 97
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory;->fDurations:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method isNewTest(Lorg/junit/runner/Description;)Z
    .registers 3

    .line 93
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory;->fDurations:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public listener()Lorg/junit/runner/notification/RunListener;
    .registers 3

    .line 163
    new-instance v0, Lorg/junit/experimental/max/MaxHistory$RememberingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/junit/experimental/max/MaxHistory$RememberingListener;-><init>(Lorg/junit/experimental/max/MaxHistory;Lorg/junit/experimental/max/MaxHistory$1;)V

    return-object v0
.end method

.method putTestDuration(Lorg/junit/runner/Description;J)V
    .registers 5

    .line 101
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory;->fDurations:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putTestFailureTimestamp(Lorg/junit/runner/Description;J)V
    .registers 5

    .line 89
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory;->fFailureTimestamps:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public testComparator()Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Lorg/junit/experimental/max/MaxHistory$TestComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/junit/experimental/max/MaxHistory$TestComparator;-><init>(Lorg/junit/experimental/max/MaxHistory;Lorg/junit/experimental/max/MaxHistory$1;)V

    return-object v0
.end method