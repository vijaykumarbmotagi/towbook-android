.class Lorg/acra/collector/LogFileCollector;
.super Ljava/lang/Object;
.source "LogFileCollector.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectLogFile(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/acra/util/BoundedLinkedList;

    invoke-direct {v0, p2}, Lorg/acra/util/BoundedLinkedList;-><init>(I)V

    const-string p2, "/"

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/16 v1, 0x400

    if-eqz p2, :cond_1f

    .line 59
    new-instance p0, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_2e

    .line 61
    :cond_1f
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object p0, p2

    .line 64
    :goto_2e
    :try_start_2e
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    :goto_32
    if-eqz p1, :cond_4d

    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/acra/util/BoundedLinkedList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_55

    goto :goto_32

    .line 70
    :cond_4d
    invoke-static {p0}, Lorg/acra/collector/CollectorUtil;->safeClose(Ljava/io/Reader;)V

    .line 72
    invoke-virtual {v0}, Lorg/acra/util/BoundedLinkedList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_55
    move-exception p1

    .line 70
    invoke-static {p0}, Lorg/acra/collector/CollectorUtil;->safeClose(Ljava/io/Reader;)V

    throw p1
.end method
