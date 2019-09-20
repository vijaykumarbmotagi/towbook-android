.class public abstract Lroboguice/util/RoboAsyncTask;
.super Lroboguice/util/SafeAsyncTask;
.source "RoboAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lroboguice/util/SafeAsyncTask<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lroboguice/util/SafeAsyncTask;-><init>()V

    .line 14
    iput-object p1, p0, Lroboguice/util/RoboAsyncTask;->context:Landroid/content/Context;

    .line 15
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object p1

    invoke-interface {p1, p0}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 19
    invoke-direct {p0, p2}, Lroboguice/util/SafeAsyncTask;-><init>(Landroid/os/Handler;)V

    .line 20
    iput-object p1, p0, Lroboguice/util/RoboAsyncTask;->context:Landroid/content/Context;

    .line 21
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object p1

    invoke-interface {p1, p0}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 25
    invoke-direct {p0, p2, p3}, Lroboguice/util/SafeAsyncTask;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    .line 26
    iput-object p1, p0, Lroboguice/util/RoboAsyncTask;->context:Landroid/content/Context;

    .line 27
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object p1

    invoke-interface {p1, p0}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 31
    invoke-direct {p0, p2}, Lroboguice/util/SafeAsyncTask;-><init>(Ljava/util/concurrent/Executor;)V

    .line 32
    iput-object p1, p0, Lroboguice/util/RoboAsyncTask;->context:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object p1

    invoke-interface {p1, p0}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 37
    iget-object v0, p0, Lroboguice/util/RoboAsyncTask;->context:Landroid/content/Context;

    return-object v0
.end method
