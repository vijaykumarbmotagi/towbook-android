.class public abstract Lroboguice/activity/RoboSplashActivity;
.super Landroid/app/Activity;
.source "RoboSplashActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field protected minDisplayMs:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x9c4

    .line 23
    iput v0, p0, Lroboguice/activity/RoboSplashActivity;->minDisplayMs:I

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .registers 2

    :try_start_0
    iput-object p1, p0, Lroboguice/activity/RoboSplashActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method protected andFinishThisOne()V
    .registers 1

    .line 75
    invoke-virtual {p0}, Lroboguice/activity/RoboSplashActivity;->finish()V

    return-void
.end method

.method protected doStuffInBackground(Landroid/app/Application;)V
    .registers 2

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "RoboSplashActivity"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lroboguice/activity/RoboSplashActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "RoboSplashActivity#onCreate"

    invoke-static {v1, v2, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_13

    :catch_e
    const-string v1, "RoboSplashActivity#onCreate"

    invoke-static {v0, v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_13} :catch_e

    .line 27
    :goto_13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 31
    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Lroboguice/activity/RoboSplashActivity$1;

    invoke-direct {v2, p0, v0, v1}, Lroboguice/activity/RoboSplashActivity$1;-><init>(Lroboguice/activity/RoboSplashActivity;J)V

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 58
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method protected abstract startNextActivity()V
.end method
