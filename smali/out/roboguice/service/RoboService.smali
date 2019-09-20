.class public abstract Lroboguice/service/RoboService;
.super Landroid/app/Service;
.source "RoboService.java"

# interfaces
.implements Lroboguice/util/RoboContext;


# instance fields
.field protected eventManager:Lroboguice/event/EventManager;

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

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lroboguice/service/RoboService;->scopedObjects:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
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

    .line 97
    iget-object v0, p0, Lroboguice/service/RoboService;->scopedObjects:Ljava/util/HashMap;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 90
    invoke-virtual {p0}, Lroboguice/service/RoboService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 91
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    iget-object v1, p0, Lroboguice/service/RoboService;->eventManager:Lroboguice/event/EventManager;

    new-instance v2, Lroboguice/service/event/OnConfigurationChangedEvent;

    invoke-direct {v2, v0, p1}, Lroboguice/service/event/OnConfigurationChangedEvent;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate()V
    .registers 3

    .line 61
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 62
    const-class v1, Lroboguice/event/EventManager;

    invoke-interface {v0, v1}, Lcom/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/event/EventManager;

    iput-object v1, p0, Lroboguice/service/RoboService;->eventManager:Lroboguice/event/EventManager;

    .line 63
    invoke-interface {v0, p0}, Lcom/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 65
    iget-object v0, p0, Lroboguice/service/RoboService;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/service/event/OnCreateEvent;

    invoke-direct {v1}, Lroboguice/service/event/OnCreateEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 77
    :try_start_0
    iget-object v0, p0, Lroboguice/service/RoboService;->eventManager:Lroboguice/event/EventManager;

    if-eqz v0, :cond_e

    .line 78
    iget-object v0, p0, Lroboguice/service/RoboService;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/service/event/OnDestroyEvent;

    invoke-direct {v1}, Lroboguice/service/event/OnDestroyEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_1a

    .line 81
    :cond_e
    :try_start_e
    invoke-static {p0}, Lroboguice/RoboGuice;->destroyInjector(Landroid/content/Context;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    .line 83
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catchall_15
    move-exception v0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    throw v0

    :catchall_1a
    move-exception v0

    .line 81
    :try_start_1b
    invoke-static {p0}, Lroboguice/RoboGuice;->destroyInjector(Landroid/content/Context;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_22

    .line 83
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    throw v0

    :catchall_22
    move-exception v0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    throw v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3

    .line 70
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 71
    iget-object p1, p0, Lroboguice/service/RoboService;->eventManager:Lroboguice/event/EventManager;

    new-instance p2, Lroboguice/service/event/OnStartEvent;

    invoke-direct {p2}, Lroboguice/service/event/OnStartEvent;-><init>()V

    invoke-virtual {p1, p2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method
