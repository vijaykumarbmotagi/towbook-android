.class public Lcom/slidingmenu/lib/app/SlidingFragmentActivity;
.super Lcom/towbook/mobile/classes/RoboActionBarActivity;
.source "SlidingFragmentActivity.java"

# interfaces
.implements Lcom/slidingmenu/lib/app/SlidingActivityBase;


# instance fields
.field private mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/towbook/mobile/classes/RoboActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .registers 3

    .line 49
    invoke-super {p0, p1}, Lcom/towbook/mobile/classes/RoboActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 52
    :cond_7
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 26
    invoke-super {p0, p1}, Lcom/towbook/mobile/classes/RoboActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance v0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-direct {v0, p0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    .line 28
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 200
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/towbook/mobile/classes/RoboActionBarActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 38
    invoke-super {p0, p1}, Lcom/towbook/mobile/classes/RoboActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 64
    invoke-super {p0, p1}, Lcom/towbook/mobile/classes/RoboActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setBehindContentView(I)V
    .registers 4

    .line 108
    invoke-virtual {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->setBehindContentView(Landroid/view/View;)V

    return-void
.end method

.method public setBehindContentView(Landroid/view/View;)V
    .registers 4

    .line 119
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(I)V
    .registers 4

    .line 75
    invoke-virtual {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    .line 85
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 97
    invoke-super {p0, p1, p2}, Lcom/towbook/mobile/classes/RoboActionBarActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSlidingActionBarEnabled(Z)V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->setSlidingActionBarEnabled(Z)V

    return-void
.end method

.method public showContent()V
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->showContent()V

    return-void
.end method

.method public showMenu()V
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->showMenu()V

    return-void
.end method

.method public showSecondaryMenu()V
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->showSecondaryMenu()V

    return-void
.end method

.method public toggle()V
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->toggle()V

    return-void
.end method
