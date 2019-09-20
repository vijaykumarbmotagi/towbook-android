.class public Lroboguice/activity/event/OnActivityResultEvent;
.super Ljava/lang/Object;
.source "OnActivityResultEvent.java"


# instance fields
.field protected data:Landroid/content/Intent;

.field protected requestCode:I

.field protected resultCode:I


# direct methods
.method public constructor <init>(IILandroid/content/Intent;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lroboguice/activity/event/OnActivityResultEvent;->requestCode:I

    .line 19
    iput p2, p0, Lroboguice/activity/event/OnActivityResultEvent;->resultCode:I

    .line 20
    iput-object p3, p0, Lroboguice/activity/event/OnActivityResultEvent;->data:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getData()Landroid/content/Intent;
    .registers 2

    .line 32
    iget-object v0, p0, Lroboguice/activity/event/OnActivityResultEvent;->data:Landroid/content/Intent;

    return-object v0
.end method

.method public getRequestCode()I
    .registers 2

    .line 24
    iget v0, p0, Lroboguice/activity/event/OnActivityResultEvent;->requestCode:I

    return v0
.end method

.method public getResultCode()I
    .registers 2

    .line 28
    iget v0, p0, Lroboguice/activity/event/OnActivityResultEvent;->resultCode:I

    return v0
.end method
