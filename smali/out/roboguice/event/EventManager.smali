.class public Lroboguice/event/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation runtime Lroboguice/inject/ContextSingleton;
.end annotation


# instance fields
.field protected context:Landroid/content/Context;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected registrations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Lroboguice/event/EventListener<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lroboguice/event/EventManager;->registrations:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 137
    iget-object v0, p0, Lroboguice/event/EventManager;->registrations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_a

    .line 139
    :cond_20
    iget-object v0, p0, Lroboguice/event/EventManager;->registrations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public fire(Ljava/lang/Object;)V
    .registers 5

    .line 123
    iget-object v0, p0, Lroboguice/event/EventManager;->registrations:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_f

    return-void

    .line 128
    :cond_f
    monitor-enter v0

    .line 129
    :try_start_10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lroboguice/event/EventListener;

    .line 130
    invoke-interface {v2, p1}, Lroboguice/event/EventListener;->onEvent(Ljava/lang/Object;)V

    goto :goto_14

    .line 131
    :cond_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public registerObserver(Ljava/lang/Class;Lroboguice/event/EventListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lroboguice/event/EventListener;",
            ")V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lroboguice/event/EventManager;->registrations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_18

    .line 44
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lroboguice/event/EventManager;->registrations:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_18
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerObserver(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 60
    new-instance v0, Lroboguice/event/eventListener/ObserverMethodListener;

    invoke-direct {v0, p1, p2}, Lroboguice/event/eventListener/ObserverMethodListener;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-virtual {p0, p3, v0}, Lroboguice/event/EventManager;->registerObserver(Ljava/lang/Class;Lroboguice/event/EventListener;)V

    return-void
.end method

.method public unregisterObserver(Ljava/lang/Class;Lroboguice/event/EventListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lroboguice/event/EventListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lroboguice/event/EventManager;->registrations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_b

    return-void

    .line 77
    :cond_b
    monitor-enter p1

    .line 78
    :try_start_c
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/event/EventListener;

    if-ne v1, p2, :cond_10

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 85
    :cond_21
    monitor-exit p1

    return-void

    :catchall_23
    move-exception p2

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_23

    throw p2
.end method

.method public unregisterObserver(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lroboguice/event/EventManager;->registrations:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-nez p2, :cond_b

    return-void

    .line 101
    :cond_b
    monitor-enter p2

    .line 102
    :try_start_c
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/event/EventListener;

    .line 104
    instance-of v2, v1, Lroboguice/event/eventListener/ObserverMethodListener;

    if-eqz v2, :cond_10

    .line 105
    check-cast v1, Lroboguice/event/eventListener/ObserverMethodListener;

    .line 106
    invoke-virtual {v1}, Lroboguice/event/eventListener/ObserverMethodListener;->getInstance()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_10

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 112
    :cond_2b
    monitor-exit p2

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p2
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_2d

    throw p1
.end method
