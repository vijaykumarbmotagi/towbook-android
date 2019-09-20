.class public final Lme/drakeet/support/toast/ToastCompat;
.super Landroid/widget/Toast;
.source "ToastCompat.java"


# instance fields
.field private final toast:Landroid/widget/Toast;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/widget/Toast;)V
    .registers 3
    .param p2    # Landroid/widget/Toast;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lme/drakeet/support/toast/ToastCompat;->toast:Landroid/widget/Toast;

    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lme/drakeet/support/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/ToastCompat;

    move-result-object p0

    return-object p0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/ToastCompat;
    .registers 4

    .line 49
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lme/drakeet/support/toast/SafeToastContext;

    invoke-direct {v0, p0, p1}, Lme/drakeet/support/toast/SafeToastContext;-><init>(Landroid/content/Context;Landroid/widget/Toast;)V

    invoke-static {p2, v0}, Lme/drakeet/support/toast/ToastCompat;->setContext(Landroid/view/View;Landroid/content/Context;)V

    .line 51
    new-instance p2, Lme/drakeet/support/toast/ToastCompat;

    invoke-direct {p2, p0, p1}, Lme/drakeet/support/toast/ToastCompat;-><init>(Landroid/content/Context;Landroid/widget/Toast;)V

    return-object p2
.end method

.method private static setContext(Landroid/view/View;Landroid/content/Context;)V
    .registers 4
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 169
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mContext"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 171
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p0

    .line 173
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_14
    return-void
.end method


# virtual methods
.method public getBaseToast()Landroid/widget/Toast;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 163
    iget-object v0, p0, Lme/drakeet/support/toast/ToastCompat;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .line 134
    iget-object v0, p0, Lme/drakeet/support/toast/ToastCompat;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getDuration()I

    move-result v0

    return v0
.end method

.method public getGravity()I
    .registers 2

    .line 140
    iget-object v0, p0, Lme/drakeet/support/toast/ToastCompat;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getGravity()I

    move-result v0

    return v0
.end method

.method public getHorizontalMargin()F
    .registers 2

    .line 122
    iget-object v0, p0, Lme/drakeet/support/toast/ToastCompat;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getHorizontalMargin()F

    move-result v0

    return v0
.end method

.method public getVerticalMargin()F
    .registers 2

    .line 128
    iget-object v0, p0, Lme/drakeet/support/toast/ToastCompat;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getVerticalMargin()F

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 158
    iget-object v0, p0, Lme/drakeet/support/toast/ToastCompat;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getXOffset()I
    .registers 2

    .line 146
    iget-object v0, p0, Lme/drakeet/support/toast/ToastCompat;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result v0

    return v0
.end method

.method public getYOffset()I
    .registers 2

    .line 152
    iget-object v0, p0, Lme/drakeet/support/toast/ToastCompat;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getYOffset()I

    move-result v0

    return v0
.end method

.method public setBadTokenListener(Lme/drakeet/support/toast/BadTokenListener;)Lme/drakeet/support/toast/ToastCompat;
    .registers 3
    .param p1    # Lme/drakeet/support/toast/BadTokenListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 72
    invoke-virtual {p0}, Lme/drakeet/support/toast/ToastCompat;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lme/drakeet/support/toast/SafeToastContext;

    invoke-virtual {v0, p1}, Lme/drakeet/support/toast/SafeToastContext;->setBadTokenListener(Lme/drakeet/support/toast/BadTokenListener;)V

    return-object p0
.end method

.method public setDuration(I)V
    .registers 3

    .line 85
    iget-object v0, p0, Lme/drakeet/support/toast/ToastCompat;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    return-void
.end method

.method public setGravity(III)V
    .registers 5

    .line 91
    iget-object v0, p0, Lme/drakeet/support/toast/ToastCompat;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    return-void
.end method

.method public setMargin(FF)V
    .registers 4

    .line 97
    iget-object v0, p0, Lme/drakeet/support/toast/ToastCompat;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Toast;->setMargin(FF)V

    return-void
.end method

.method public setText(I)V
    .registers 3

    .line 103
    iget-object v0, p0, Lme/drakeet/support/toast/ToastCompat;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    .line 109
    iget-object v0, p0, Lme/drakeet/support/toast/ToastCompat;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 4

    .line 115
    iget-object v0, p0, Lme/drakeet/support/toast/ToastCompat;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 116
    new-instance v0, Lme/drakeet/support/toast/SafeToastContext;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lme/drakeet/support/toast/SafeToastContext;-><init>(Landroid/content/Context;Landroid/widget/Toast;)V

    invoke-static {p1, v0}, Lme/drakeet/support/toast/ToastCompat;->setContext(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method public show()V
    .registers 2

    .line 79
    iget-object v0, p0, Lme/drakeet/support/toast/ToastCompat;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
