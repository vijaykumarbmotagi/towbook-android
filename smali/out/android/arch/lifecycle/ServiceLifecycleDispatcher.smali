.class public Landroid/arch/lifecycle/ServiceLifecycleDispatcher;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastDispatchRunnable:Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

.field private final mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/LifecycleOwner;)V
    .registers 3
    .param p1    # Landroid/arch/lifecycle/LifecycleOwner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    .line 39
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private postDispatchRunnable(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .registers 4

    .line 43
    iget-object v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mLastDispatchRunnable:Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    if-eqz v0, :cond_9

    .line 44
    iget-object v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mLastDispatchRunnable:Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->run()V

    .line 46
    :cond_9
    new-instance v0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    iget-object v1, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, v1, p1}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;-><init>(Landroid/arch/lifecycle/LifecycleRegistry;Landroid/arch/lifecycle/Lifecycle$Event;)V

    iput-object v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mLastDispatchRunnable:Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    .line 47
    iget-object p1, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mLastDispatchRunnable:Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public onServicePreSuperOnBind()V
    .registers 2

    .line 62
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onServicePreSuperOnCreate()V
    .registers 2

    .line 54
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onServicePreSuperOnDestroy()V
    .registers 2

    .line 79
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 80
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onServicePreSuperOnStart()V
    .registers 2

    .line 71
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method
