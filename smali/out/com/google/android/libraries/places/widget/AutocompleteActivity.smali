.class public Lcom/google/android/libraries/places/widget/AutocompleteActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PG"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final RESULT_ERROR:I = 0x2


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private a:Lcom/google/android/libraries/places/internal/ff;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ff;->e()V

    .line 26
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    .line 29
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 30
    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "AutocompleteActivity"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "AutocompleteActivity#onCreate"

    invoke-static {v1, v2, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_13

    :catch_e
    const-string v1, "AutocompleteActivity#onCreate"

    invoke-static {v0, v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_13} :catch_e

    .line 2
    :goto_13
    :try_start_13
    invoke-static {}, Lcom/google/android/libraries/places/api/Places;->isInitialized()Z

    move-result v0

    const-string v1, "Places must be initialized."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/fo;->a(Landroid/support/v7/app/AppCompatActivity;Landroid/os/Bundle;)Lcom/google/android/libraries/places/internal/fm;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/ff;

    if-nez v1, :cond_2a

    .line 6
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/fm;->a()Lcom/google/android/libraries/places/internal/ff;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/ff;

    .line 7
    :cond_2a
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ff;->a()V
    :try_end_32
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_32} :catch_36
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_32} :catch_36

    .line 9
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    :catch_36
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 12
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    throw p1
.end method

.method protected onDestroy()V
    .registers 2

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ff;->h()V

    .line 50
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    .line 53
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 54
    throw v0
.end method

.method protected onPause()V
    .registers 2

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ff;->f()V

    .line 32
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    .line 35
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 36
    throw v0
.end method

.method protected onResume()V
    .registers 2

    .line 19
    :try_start_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 20
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ff;->d()V
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    .line 23
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 24
    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 37
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 38
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ff;->a(Landroid/os/Bundle;)V
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p1

    .line 41
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 42
    throw p1
.end method

.method protected onStart()V
    .registers 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    .line 13
    :try_start_7
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ff;->c()V
    :try_end_f
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_f} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    .line 17
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 18
    throw v0
.end method

.method protected onStop()V
    .registers 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    .line 43
    :try_start_7
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ff;->g()V

    .line 44
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V
    :try_end_f
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_f} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    .line 47
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 48
    throw v0
.end method
