.class Lorg/acra/collector/LogCatCollector;
.super Ljava/lang/Object;
.source "LogCatCollector.java"


# static fields
.field private static final DEFAULT_TAIL_COUNT:I = 0x64


# direct methods
.method constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectLogCat(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 64
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 66
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->logcatFilterByPid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    if-lez v0, :cond_27

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_27
    move-object v0, v2

    .line 70
    :goto_28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "logcat"

    .line 71
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_3c

    const-string v3, "-b"

    .line 73
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_3c
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->logcatArguments()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "-t"

    .line 83
    invoke-interface {p0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_7c

    .line 84
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_7c

    add-int/lit8 v4, v3, 0x1

    .line 85
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 86
    invoke-static {}, Lorg/acra/collector/Compatibility;->getAPILevel()I

    move-result v6

    const/16 v7, 0x8

    if-ge v6, v7, :cond_7b

    .line 87
    invoke-interface {p0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 88
    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const-string v3, "-d"

    .line 89
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7b
    move v4, v5

    .line 95
    :cond_7c
    new-instance v3, Lorg/acra/util/BoundedLinkedList;

    if-lez v4, :cond_81

    goto :goto_83

    :cond_81
    const/16 v4, 0x64

    :goto_83
    invoke-direct {v3, v4}, Lorg/acra/util/BoundedLinkedList;-><init>(I)V

    .line 97
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    :try_start_89
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 103
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x2000

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_ad} :catch_f0
    .catchall {:try_start_89 .. :try_end_ad} :catchall_ed

    .line 105
    :try_start_ad
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Retrieving logcat output..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lorg/acra/collector/LogCatCollector$1;

    invoke-direct {v4, p0}, Lorg/acra/collector/LogCatCollector$1;-><init>(Ljava/lang/Process;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 121
    :cond_c1
    :goto_c1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_c5} :catch_ea
    .catchall {:try_start_ad .. :try_end_c5} :catchall_e8

    if-nez p0, :cond_cb

    .line 133
    invoke-static {v1}, Lorg/acra/collector/CollectorUtil;->safeClose(Ljava/io/Reader;)V

    goto :goto_fb

    :cond_cb
    if-eqz v0, :cond_d3

    .line 125
    :try_start_cd
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 126
    :cond_d3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_e7} :catch_ea
    .catchall {:try_start_cd .. :try_end_e7} :catchall_e8

    goto :goto_c1

    :catchall_e8
    move-exception p0

    goto :goto_100

    :catch_ea
    move-exception p0

    move-object v2, v1

    goto :goto_f1

    :catchall_ed
    move-exception p0

    move-object v1, v2

    goto :goto_100

    :catch_f0
    move-exception p0

    .line 131
    :goto_f1
    :try_start_f1
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "LogCatCollector.collectLogCat could not retrieve data."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f8
    .catchall {:try_start_f1 .. :try_end_f8} :catchall_ed

    .line 133
    invoke-static {v2}, Lorg/acra/collector/CollectorUtil;->safeClose(Ljava/io/Reader;)V

    .line 136
    :goto_fb
    invoke-virtual {v3}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 133
    :goto_100
    invoke-static {v1}, Lorg/acra/collector/CollectorUtil;->safeClose(Ljava/io/Reader;)V

    throw p0
.end method
