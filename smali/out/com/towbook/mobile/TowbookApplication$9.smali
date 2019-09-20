.class Lcom/towbook/mobile/TowbookApplication$9;
.super Landroid/os/AsyncTask;
.source "TowbookApplication.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/towbook/mobile/TowbookApplication;->registerWithNotificationHubs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/towbook/mobile/TowbookApplication;


# direct methods
.method constructor <init>(Lcom/towbook/mobile/TowbookApplication;)V
    .registers 2

    .line 462
    iput-object p1, p0, Lcom/towbook/mobile/TowbookApplication$9;->this$0:Lcom/towbook/mobile/TowbookApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .registers 2

    :try_start_0
    iput-object p1, p0, Lcom/towbook/mobile/TowbookApplication$9;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 p1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/towbook/mobile/TowbookApplication$9;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "TowbookApplication$9#doInBackground"

    invoke-static {v0, v1, p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_e

    :catch_9
    const-string v0, "TowbookApplication$9#doInBackground"

    invoke-static {p1, v0, p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_e} :catch_9

    .line 466
    :goto_e
    :try_start_e
    invoke-static {}, Lcom/towbook/mobile/TowbookApplication;->access$100()Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Lcom/towbook/mobile/TowbookApplication;->access$000()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->registrationHandle:Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_22} :catch_29

    .line 471
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object p1

    :catch_29
    move-exception p1

    const-string v0, "TowbookApplication"

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 4

    const/4 p1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/towbook/mobile/TowbookApplication$9;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "TowbookApplication$9#onPostExecute"

    invoke-static {v0, v1, p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_e

    :catch_9
    const-string v0, "TowbookApplication$9#onPostExecute"

    invoke-static {p1, v0, p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_e} :catch_9

    .line 475
    :goto_e
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void
.end method
