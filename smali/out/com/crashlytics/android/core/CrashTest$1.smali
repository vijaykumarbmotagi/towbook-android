.class Lcom/crashlytics/android/core/CrashTest$1;
.super Landroid/os/AsyncTask;
.source "CrashTest.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashTest;->crashAsyncTask(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/crashlytics/android/core/CrashTest;

.field final synthetic val$delayMs:J


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashTest;J)V
    .registers 4

    .line 42
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashTest$1;->this$0:Lcom/crashlytics/android/core/CrashTest;

    iput-wide p2, p0, Lcom/crashlytics/android/core/CrashTest$1;->val$delayMs:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .registers 2

    :try_start_0
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashTest$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashTest$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "CrashTest$1#doInBackground"

    invoke-static {v1, v2, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_e

    :catch_9
    const-string v1, "CrashTest$1#doInBackground"

    invoke-static {v0, v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_e} :catch_9

    .line 42
    :goto_e
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/CrashTest$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 46
    :try_start_0
    iget-wide v0, p0, Lcom/crashlytics/android/core/CrashTest$1;->val$delayMs:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_5

    .line 50
    :catch_5
    iget-object p1, p0, Lcom/crashlytics/android/core/CrashTest$1;->this$0:Lcom/crashlytics/android/core/CrashTest;

    const-string v0, "Background thread crash"

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/core/CrashTest;->throwRuntimeException(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
