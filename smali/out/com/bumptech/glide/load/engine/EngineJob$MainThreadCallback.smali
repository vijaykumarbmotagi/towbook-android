.class Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 321
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineJob;

    .line 322
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_30

    .line 333
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :pswitch_22
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineJob;->handleCancelledOnMainThread()V

    goto :goto_2d

    .line 327
    :pswitch_26
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineJob;->handleExceptionOnMainThread()V

    goto :goto_2d

    .line 324
    :pswitch_2a
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineJob;->handleResultOnMainThread()V

    :goto_2d
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_26
        :pswitch_22
    .end packed-switch
.end method
