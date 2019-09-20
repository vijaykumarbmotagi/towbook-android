.class Lcom/towbook/mobile/TowbookApplication$8;
.super Ljava/util/TimerTask;
.source "TowbookApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/towbook/mobile/TowbookApplication;->initializeRingtoneTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/towbook/mobile/TowbookApplication;


# direct methods
.method constructor <init>(Lcom/towbook/mobile/TowbookApplication;)V
    .registers 2

    .line 452
    iput-object p1, p0, Lcom/towbook/mobile/TowbookApplication$8;->this$0:Lcom/towbook/mobile/TowbookApplication;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 455
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->v:Landroid/os/Vibrator;

    sget-object v1, Lcom/towbook/mobile/TowbookApplication;->pattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 456
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->r:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    return-void
.end method
