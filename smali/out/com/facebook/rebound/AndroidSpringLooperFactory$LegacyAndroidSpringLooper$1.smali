.class Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;
.super Ljava/lang/Object;
.source "AndroidSpringLooperFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 61
    iget-object v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    invoke-static {v0}, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->access$000(Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    iget-object v0, v0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    if-nez v0, :cond_f

    goto :goto_33

    .line 64
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 65
    iget-object v2, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    iget-object v2, v2, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    iget-object v3, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    invoke-static {v3}, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->access$100(Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)J

    move-result-wide v3

    sub-long v5, v0, v3

    long-to-double v0, v5

    invoke-virtual {v2, v0, v1}, Lcom/facebook/rebound/BaseSpringSystem;->loop(D)V

    .line 66
    iget-object v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    invoke-static {v0}, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->access$300(Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    invoke-static {v1}, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->access$200(Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_33
    :goto_33
    return-void
.end method