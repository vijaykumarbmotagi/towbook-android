.class public Lcom/crashlytics/android/core/CrashTest;
.super Ljava/lang/Object;
.source "CrashTest.java"


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private privateMethodThatThrowsException(Ljava/lang/String;)V
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public crashAsyncTask(J)V
    .registers 5

    .line 42
    new-instance v0, Lcom/crashlytics/android/core/CrashTest$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/crashlytics/android/core/CrashTest$1;-><init>(Lcom/crashlytics/android/core/CrashTest;J)V

    const/4 p1, 0x1

    .line 54
    new-array p1, p1, [Ljava/lang/Void;

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/Void;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    instance-of p2, v0, Landroid/os/AsyncTask;

    if-nez p2, :cond_16

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1b

    :cond_16
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1b
    return-void
.end method

.method public indexOutOfBounds()V
    .registers 6

    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [I

    const/16 v1, 0xa

    .line 30
    aget v0, v0, v1

    .line 34
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of bounds value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stackOverflow()I
    .registers 4

    .line 25
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashTest;->stackOverflow()I

    move-result v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public throwFiveChainedExceptions()V
    .registers 4

    :try_start_0
    const-string v0, "1"

    .line 62
    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashTest;->privateMethodThatThrowsException(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 64
    :try_start_7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "2"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_f

    :catch_f
    move-exception v0

    .line 67
    :try_start_10
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "3"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_18

    :catch_18
    move-exception v0

    .line 70
    :try_start_19
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "4"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_21} :catch_21

    :catch_21
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "5"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public throwRuntimeException(Ljava/lang/String;)V
    .registers 3

    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
