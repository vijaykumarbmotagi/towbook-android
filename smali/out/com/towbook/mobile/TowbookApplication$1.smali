.class final Lcom/towbook/mobile/TowbookApplication$1;
.super Ljava/util/TimerTask;
.source "TowbookApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/towbook/mobile/TowbookApplication;->cancelRingtoneTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 187
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 190
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->v:Landroid/os/Vibrator;

    sget-object v1, Lcom/towbook/mobile/TowbookApplication;->pattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 191
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->r:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    return-void
.end method
