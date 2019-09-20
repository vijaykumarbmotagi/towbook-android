.class public abstract Lroboguice/activity/RoboPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "RoboPreferenceActivity.java"

# interfaces
.implements Lroboguice/util/RoboContext;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field protected eventManager:Lroboguice/event/EventManager;

.field ignored:Lroboguice/inject/ContentViewListener;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected preferenceListener:Lroboguice/inject/PreferenceListener;

.field protected scopedObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lroboguice/activity/RoboPreferenceActivity;->scopedObjects:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .registers 2

    :try_start_0
    iput-object p1, p0, Lroboguice/activity/RoboPreferenceActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method public getScopedObjectMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lroboguice/activity/RoboPreferenceActivity;->scopedObjects:Ljava/util/HashMap;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 154
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 155
    iget-object v0, p0, Lroboguice/activity/RoboPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnActivityResultEvent;

    invoke-direct {v1, p1, p2, p3}, Lroboguice/activity/event/OnActivityResultEvent;-><init>(IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 140
    invoke-virtual {p0}, Lroboguice/activity/RoboPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 141
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 142
    iget-object v1, p0, Lroboguice/activity/RoboPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v2, Lroboguice/activity/event/OnConfigurationChangedEvent;

    invoke-direct {v2, v0, p1}, Lroboguice/activity/event/OnConfigurationChangedEvent;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public onContentChanged()V
    .registers 3

    .line 147
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onContentChanged()V

    .line 148
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectViewMembers(Landroid/app/Activity;)V

    .line 149
    iget-object v0, p0, Lroboguice/activity/RoboPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnContentChangedEvent;

    invoke-direct {v1}, Lroboguice/activity/event/OnContentChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "RoboPreferenceActivity"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lroboguice/activity/RoboPreferenceActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "RoboPreferenceActivity#onCreate"

    invoke-static {v1, v2, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_13

    :catch_e
    const-string v1, "RoboPreferenceActivity#onCreate"

    invoke-static {v0, v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_13} :catch_e

    .line 63
    :goto_13
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 64
    const-class v1, Lroboguice/event/EventManager;

    invoke-interface {v0, v1}, Lroboguice/inject/RoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/event/EventManager;

    iput-object v1, p0, Lroboguice/activity/RoboPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    .line 65
    const-class v1, Lroboguice/inject/PreferenceListener;

    invoke-interface {v0, v1}, Lroboguice/inject/RoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/inject/PreferenceListener;

    iput-object v1, p0, Lroboguice/activity/RoboPreferenceActivity;->preferenceListener:Lroboguice/inject/PreferenceListener;

    .line 66
    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 67
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lroboguice/activity/RoboPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnCreateEvent;

    invoke-direct {v1, p1}, Lroboguice/activity/event/OnCreateEvent;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 128
    :try_start_0
    iget-object v0, p0, Lroboguice/activity/RoboPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnDestroyEvent;

    invoke-direct {v1}, Lroboguice/activity/event/OnDestroyEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_16

    .line 131
    :try_start_a
    invoke-static {p0}, Lroboguice/RoboGuice;->destroyInjector(Landroid/content/Context;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_11

    .line 133
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void

    :catchall_11
    move-exception v0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    throw v0

    :catchall_16
    move-exception v0

    .line 131
    :try_start_17
    invoke-static {p0}, Lroboguice/RoboGuice;->destroyInjector(Landroid/content/Context;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1e

    .line 133
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    throw v0

    :catchall_1e
    move-exception v0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    throw v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 112
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 113
    iget-object p1, p0, Lroboguice/activity/RoboPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v0, Lroboguice/activity/event/OnNewIntentEvent;

    invoke-direct {v0}, Lroboguice/activity/event/OnNewIntentEvent;-><init>()V

    invoke-virtual {p1, v0}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 106
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 107
    iget-object v0, p0, Lroboguice/activity/RoboPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnPauseEvent;

    invoke-direct {v1}, Lroboguice/activity/event/OnPauseEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onRestart()V
    .registers 3

    .line 88
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onRestart()V

    .line 89
    iget-object v0, p0, Lroboguice/activity/RoboPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnRestartEvent;

    invoke-direct {v1}, Lroboguice/activity/event/OnRestartEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 100
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 101
    iget-object v0, p0, Lroboguice/activity/RoboPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnResumeEvent;

    invoke-direct {v1}, Lroboguice/activity/event/OnResumeEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStart()V
    .registers 3

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    .line 94
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 95
    iget-object v0, p0, Lroboguice/activity/RoboPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnStartEvent;

    invoke-direct {v1}, Lroboguice/activity/event/OnStartEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .registers 3

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    .line 119
    :try_start_7
    iget-object v0, p0, Lroboguice/activity/RoboPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnStopEvent;

    invoke-direct {v1}, Lroboguice/activity/event/OnStopEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 121
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void

    :catchall_15
    move-exception v0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    throw v0
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .registers 4

    .line 73
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 75
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object p1

    const-class v0, Lroboguice/inject/ContextScope;

    invoke-interface {p1, v0}, Lroboguice/inject/RoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lroboguice/inject/ContextScope;

    .line 76
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 77
    :try_start_12
    invoke-virtual {p1, p0}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_24

    .line 79
    :try_start_15
    iget-object v1, p0, Lroboguice/activity/RoboPreferenceActivity;->preferenceListener:Lroboguice/inject/PreferenceListener;

    invoke-virtual {v1}, Lroboguice/inject/PreferenceListener;->injectPreferenceViews()V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1f

    .line 81
    :try_start_1a
    invoke-virtual {p1, p0}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    .line 83
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception v1

    .line 81
    invoke-virtual {p1, p0}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_24
    move-exception p1

    .line 83
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw p1
.end method
