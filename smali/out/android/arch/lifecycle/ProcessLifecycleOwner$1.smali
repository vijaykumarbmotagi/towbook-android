.class Landroid/arch/lifecycle/ProcessLifecycleOwner$1;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/ProcessLifecycleOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/ProcessLifecycleOwner;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V
    .registers 2

    .line 63
    iput-object p1, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner$1;->this$0:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner$1;->this$0:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-static {v0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->access$000(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V

    .line 67
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner$1;->this$0:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-static {v0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->access$100(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V

    return-void
.end method
