.class public Lroboguice/activity/event/OnCreateEvent;
.super Ljava/lang/Object;
.source "OnCreateEvent.java"


# instance fields
.field protected savedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lroboguice/activity/event/OnCreateEvent;->savedInstanceState:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getSavedInstanceState()Landroid/os/Bundle;
    .registers 2

    .line 22
    iget-object v0, p0, Lroboguice/activity/event/OnCreateEvent;->savedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method
