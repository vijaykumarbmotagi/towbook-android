.class public Lroboguice/inject/ContextScopedRoboInjector;
.super Ljava/lang/Object;
.source "ContextScopedRoboInjector.java"

# interfaces
.implements Lroboguice/inject/RoboInjector;


# instance fields
.field protected context:Landroid/content/Context;

.field protected delegate:Lcom/google/inject/Injector;

.field protected scope:Lroboguice/inject/ContextScope;

.field protected viewListener:Lroboguice/inject/ViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/inject/Injector;Lroboguice/inject/ViewListener;)V
    .registers 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    .line 25
    iput-object p1, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lroboguice/inject/ContextScopedRoboInjector;->viewListener:Lroboguice/inject/ViewListener;

    .line 27
    iget-object p1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    const-class p2, Lroboguice/inject/ContextScope;

    invoke-interface {p1, p2}, Lcom/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lroboguice/inject/ContextScope;

    iput-object p1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    return-void
.end method


# virtual methods
.method public createChildInjector(Ljava/lang/Iterable;)Lcom/google/inject/Injector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/inject/Module;",
            ">;)",
            "Lcom/google/inject/Injector;"
        }
    .end annotation

    .line 32
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 33
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 35
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->createChildInjector(Ljava/lang/Iterable;)Lcom/google/inject/Injector;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 37
    :try_start_10
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_19
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_22
    move-exception p1

    .line 39
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public varargs createChildInjector([Lcom/google/inject/Module;)Lcom/google/inject/Injector;
    .registers 5

    .line 44
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 45
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 47
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->createChildInjector([Lcom/google/inject/Module;)Lcom/google/inject/Injector;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 49
    :try_start_10
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_19
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_22
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public findBindingsByType(Lcom/google/inject/TypeLiteral;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/google/inject/Binding<",
            "TT;>;>;"
        }
    .end annotation

    .line 56
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 57
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 59
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->findBindingsByType(Lcom/google/inject/TypeLiteral;)Ljava/util/List;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 61
    :try_start_10
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_19
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_22
    move-exception p1

    .line 63
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public getAllBindings()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/inject/Key<",
            "*>;",
            "Lcom/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 68
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 69
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 71
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1}, Lcom/google/inject/Injector;->getAllBindings()Ljava/util/Map;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 73
    :try_start_10
    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception v1

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_22
    move-exception v1

    .line 75
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 80
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 81
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 83
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 85
    :try_start_10
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_19
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_22
    move-exception p1

    .line 87
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public getBinding(Ljava/lang/Class;)Lcom/google/inject/Binding;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 92
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 93
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 95
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getBinding(Ljava/lang/Class;)Lcom/google/inject/Binding;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 97
    :try_start_10
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_19
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_22
    move-exception p1

    .line 99
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public getBindings()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/inject/Key<",
            "*>;",
            "Lcom/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 104
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 105
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 107
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1}, Lcom/google/inject/Injector;->getBindings()Ljava/util/Map;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 109
    :try_start_10
    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception v1

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_22
    move-exception v1

    .line 111
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getExistingBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 116
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 117
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 119
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getExistingBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 121
    :try_start_10
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_19
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_22
    move-exception p1

    .line 123
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 128
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 129
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 131
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 133
    :try_start_10
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_19
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_22
    move-exception p1

    .line 135
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 140
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 141
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 143
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 145
    :try_start_10
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_19
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_22
    move-exception p1

    .line 147
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 164
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 165
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 167
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 169
    :try_start_10
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_19
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_22
    move-exception p1

    .line 171
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 152
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 153
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 155
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 157
    :try_start_10
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_19
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_22
    move-exception p1

    .line 159
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public getParent()Lcom/google/inject/Injector;
    .registers 5

    .line 176
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 177
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 179
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1}, Lcom/google/inject/Injector;->getParent()Lcom/google/inject/Injector;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 181
    :try_start_10
    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception v1

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_22
    move-exception v1

    .line 183
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 188
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 189
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 191
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 193
    :try_start_10
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_19
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_22
    move-exception p1

    .line 195
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 200
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 203
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 205
    :try_start_10
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_19
    move-exception p1

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_22
    move-exception p1

    .line 207
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public getScopeBindings()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/Scope;",
            ">;"
        }
    .end annotation

    .line 212
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 213
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 215
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1}, Lcom/google/inject/Injector;->getScopeBindings()Ljava/util/Map;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 217
    :try_start_10
    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception v1

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_22
    move-exception v1

    .line 219
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getTypeConverterBindings()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/TypeConverterBinding;",
            ">;"
        }
    .end annotation

    .line 224
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 225
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 227
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1}, Lcom/google/inject/Injector;->getTypeConverterBindings()Ljava/util/Set;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    .line 229
    :try_start_10
    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception v1

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v3, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_22
    move-exception v1

    .line 231
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .registers 2

    .line 236
    invoke-virtual {p0, p1}, Lroboguice/inject/ContextScopedRoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    return-void
.end method

.method public injectMembersWithoutViews(Ljava/lang/Object;)V
    .registers 5

    .line 240
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_21

    .line 243
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_18

    .line 245
    :try_start_f
    iget-object p1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    .line 247
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p1

    .line 245
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_21
    move-exception p1

    .line 247
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_21

    throw p1
.end method

.method public injectViewMembers(Landroid/app/Activity;)V
    .registers 5

    .line 252
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 253
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_2b

    .line 255
    :try_start_a
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    if-eq v1, p1, :cond_16

    .line 256
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v1, "internal error, how did you get here?"

    invoke-direct {p1, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_16
    invoke-static {p1}, Lroboguice/inject/ViewListener$ViewMembersInjector;->injectViews(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_22

    .line 260
    :try_start_19
    iget-object p1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    .line 262
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p1

    .line 260
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_2b
    move-exception p1

    .line 262
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public injectViewMembers(Landroid/support/v4/app/Fragment;)V
    .registers 5

    .line 267
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 268
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1f

    .line 270
    :try_start_a
    invoke-static {p1}, Lroboguice/inject/ViewListener$ViewMembersInjector;->injectViews(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_16

    .line 272
    :try_start_d
    iget-object p1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    .line 274
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    .line 272
    iget-object v1, p0, Lroboguice/inject/ContextScopedRoboInjector;->scope:Lroboguice/inject/ContextScope;

    iget-object v2, p0, Lroboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1f
    move-exception p1

    .line 274
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_1f

    throw p1
.end method
