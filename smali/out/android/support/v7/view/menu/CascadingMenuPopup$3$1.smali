.class Landroid/support/v7/view/menu/CascadingMenuPopup$3$1;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/view/menu/CascadingMenuPopup$3;->onItemHoverEnter(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/view/menu/CascadingMenuPopup$3;

.field final synthetic val$item:Landroid/view/MenuItem;

.field final synthetic val$menu:Landroid/support/v7/view/menu/MenuBuilder;

.field final synthetic val$nextInfo:Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/CascadingMenuPopup$3;Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 5

    .line 170
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3$1;->this$1:Landroid/support/v7/view/menu/CascadingMenuPopup$3;

    iput-object p2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iput-object p3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    iput-object p4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3$1;->val$menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 175
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    if-eqz v0, :cond_19

    .line 178
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3$1;->this$1:Landroid/support/v7/view/menu/CascadingMenuPopup$3;

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$3;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    .line 179
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 180
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3$1;->this$1:Landroid/support/v7/view/menu/CascadingMenuPopup$3;

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$3;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    iput-boolean v1, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    .line 184
    :cond_19
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 185
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3$1;->val$menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    :cond_31
    return-void
.end method