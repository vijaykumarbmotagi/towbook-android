.class public Landroid/arch/lifecycle/LifecycleService;
.super Landroid/app/Service;
.source "LifecycleService.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleOwner;


# instance fields
.field private final mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 43
    iget-object p1, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {p1}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnBind()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 35
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnCreate()V

    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 68
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnDestroy()V

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 51
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnStart()V

    .line 52
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
