.class public Lorg/acra/CrashReportDialog;
.super Lorg/acra/BaseCrashReportDialog;
.source "CrashReportDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final STATE_COMMENT:Ljava/lang/String; = "comment"

.field private static final STATE_EMAIL:Ljava/lang/String; = "email"


# instance fields
.field mDialog:Landroid/app/AlertDialog;

.field private prefs:Landroid/content/SharedPreferences;

.field private userComment:Landroid/widget/EditText;

.field private userEmail:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lorg/acra/BaseCrashReportDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildCustomView(Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    .line 55
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xa

    .line 57
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 58
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 62
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v5, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    invoke-virtual {v3, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 68
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->resDialogText()I

    move-result v3

    if-eqz v3, :cond_4e

    .line 71
    invoke-virtual {p0, v3}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_4e
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->resDialogCommentPrompt()I

    move-result v1

    if-eqz v1, :cond_9f

    .line 78
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p0, v1}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v3, v1, v2, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 82
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    .line 86
    iget-object v1, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setLines(I)V

    if-eqz p1, :cond_9a

    const-string v1, "comment"

    .line 88
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9a

    .line 90
    iget-object v3, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_9a
    iget-object v1, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    :cond_9f
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->resDialogEmailPrompt()I

    move-result v1

    if-eqz v1, :cond_115

    .line 99
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0, v1}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 103
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    .line 106
    iget-object v1, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 107
    iget-object v1, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 109
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ACRAConfiguration;->sharedPreferencesMode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/acra/CrashReportDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/CrashReportDialog;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz p1, :cond_f9

    const-string v1, "email"

    .line 113
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_f9
    if-eqz v1, :cond_101

    .line 116
    iget-object p1, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_110

    .line 118
    :cond_101
    iget-object p1, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "acra.user.email"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_110
    iget-object p1, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_115
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3b

    .line 130
    iget-object p1, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    if-eqz p1, :cond_12

    iget-object p1, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_14

    :cond_12
    const-string p1, ""

    .line 134
    :goto_14
    iget-object p2, p0, Lorg/acra/CrashReportDialog;->prefs:Landroid/content/SharedPreferences;

    if-eqz p2, :cond_35

    iget-object p2, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    if-eqz p2, :cond_35

    .line 135
    iget-object p2, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 136
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "acra.user.email"

    .line 137
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_37

    :cond_35
    const-string p2, ""

    .line 142
    :goto_37
    invoke-virtual {p0, p1, p2}, Lorg/acra/CrashReportDialog;->sendCrash(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 144
    :cond_3b
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->cancelReports()V

    .line 147
    :goto_3e
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 33
    invoke-super {p0, p1}, Lorg/acra/BaseCrashReportDialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->resDialogTitle()I

    move-result v1

    if-eqz v1, :cond_15

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 40
    :cond_15
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->resDialogIcon()I

    move-result v1

    if-eqz v1, :cond_22

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 44
    :cond_22
    invoke-virtual {p0, p1}, Lorg/acra/CrashReportDialog;->buildCustomView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 45
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lorg/acra/ACRAConfiguration;->resDialogPositiveButtonText()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lorg/acra/ACRAConfiguration;->resDialogNegativeButtonText()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/CrashReportDialog;->mDialog:Landroid/app/AlertDialog;

    .line 49
    iget-object p1, p0, Lorg/acra/CrashReportDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 50
    iget-object p1, p0, Lorg/acra/CrashReportDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 51
    iget-object p1, p0, Lorg/acra/CrashReportDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 153
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 163
    invoke-super {p0, p1}, Lorg/acra/BaseCrashReportDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string v0, "comment"

    .line 165
    iget-object v1, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_1e
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string v0, "email"

    .line 168
    iget-object v1, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    return-void
.end method
