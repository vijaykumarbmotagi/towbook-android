.class Lcom/getbase/floatingactionbutton/FloatingActionsMenu$2;
.super Ljava/lang/Object;
.source "FloatingActionsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createAddButton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;


# direct methods
.method constructor <init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$2;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 183
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$2;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->toggle()V

    return-void
.end method
