.class public Lroboguice/inject/ContextScopedProvider;
.super Ljava/lang/Object;
.source "ContextScopedProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected provider:Lcom/google/inject/Provider;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected scope:Lroboguice/inject/ContextScope;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 14
    const-class v0, Lroboguice/inject/ContextScope;

    monitor-enter v0

    .line 15
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ContextScopedProvider;->scope:Lroboguice/inject/ContextScope;

    invoke-virtual {v1, p1}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    .line 17
    :try_start_8
    iget-object v1, p0, Lroboguice/inject/ContextScopedProvider;->provider:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_15

    .line 19
    :try_start_e
    iget-object v2, p0, Lroboguice/inject/ContextScopedProvider;->scope:Lroboguice/inject/ContextScope;

    invoke-virtual {v2, p1}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_15
    move-exception v1

    iget-object v2, p0, Lroboguice/inject/ContextScopedProvider;->scope:Lroboguice/inject/ContextScope;

    invoke-virtual {v2, p1}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_1c
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    throw p1
.end method
