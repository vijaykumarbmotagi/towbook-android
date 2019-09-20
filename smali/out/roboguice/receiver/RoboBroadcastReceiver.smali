.class public abstract Lroboguice/receiver/RoboBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RoboBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lroboguice/RoboGuice;->getBaseApplicationInjector(Landroid/app/Application;)Lcom/google/inject/Injector;

    move-result-object v0

    .line 26
    invoke-interface {v0, p0}, Lcom/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0, p1, p2}, Lroboguice/receiver/RoboBroadcastReceiver;->handleReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
