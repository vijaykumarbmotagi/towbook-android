.class public Lcom/towbook/mobile/authenticator/LoginActivity;
.super Lroboguice/activity/RoboAccountAuthenticatorActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/towbook/mobile/authenticator/LoginActivity$LoginTask;
    }
.end annotation

.annotation runtime Lroboguice/inject/ContentView;
    value = 0x7f0b009a
.end annotation


# static fields
.field public static final PARAM_AUTHTOKEN_TYPE:Ljava/lang/String; = "auth.token"

.field public static final PARAM_USERNAME:Ljava/lang/String; = "username"

.field public static final TAG:Ljava/lang/String; = "LoginActivity"


# instance fields
.field btsignup:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0900ca
    .end annotation
.end field

.field editextError:Landroid/graphics/drawable/Drawable;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0800cd
    .end annotation
.end field

.field editextnormal:Landroid/graphics/drawable/Drawable;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0800cc
    .end annotation
.end field

.field mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field mDialog:Landroid/app/ProgressDialog;

.field msConfirmExit:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0f01e0
    .end annotation
.end field

.field msSignin:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0f020b
    .end annotation
.end field

.field ms_login_bad_token:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0f020c
    .end annotation
.end field

.field ms_login_error:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0f020d
    .end annotation
.end field

.field ms_login_no_signal:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0f020e
    .end annotation
.end field

.field ms_login_server:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0f020f
    .end annotation
.end field

.field private requestNewAccount:Z

.field private signInSuccess:Z

.field tvPassword:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f090569
    .end annotation
.end field

.field tvUsername:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f09056a
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lroboguice/activity/RoboAccountAuthenticatorActivity;-><init>()V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->requestNewAccount:Z

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->signInSuccess:Z

    .line 82
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$000(Lcom/towbook/mobile/authenticator/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/towbook/mobile/authenticator/LoginActivity;->loggedIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/towbook/mobile/authenticator/LoginActivity;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->signInSuccess:Z

    return p0
.end method

.method private loggedIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1a

    .line 188
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->ms_login_bad_token:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lme/drakeet/support/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/ToastCompat;

    move-result-object v0

    invoke-virtual {v0}, Lme/drakeet/support/toast/ToastCompat;->show()V

    :cond_1a
    const-string v0, "LoginActivity"

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->signInSuccess:Z

    .line 195
    invoke-virtual {p0, p2, p4, p3, p1}, Lcom/towbook/mobile/authenticator/LoginActivity;->addAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/AccountManager;

    .line 197
    iget-object p3, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->mDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading app..."

    invoke-virtual {p3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 199
    new-instance p3, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/MainActivity;

    invoke-direct {p3, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 200
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "justSignedIn"

    .line 201
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "authAccount"

    .line 202
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "accountType"

    .line 203
    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "authtoken"

    .line 204
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/towbook/mobile/authenticator/LoginActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    .line 207
    invoke-virtual {p0, p1, p3}, Lcom/towbook/mobile/authenticator/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 209
    invoke-virtual {p0, p3}, Lcom/towbook/mobile/authenticator/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 210
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/LoginActivity;->finish()V

    return-void
.end method

.method private signIn()V
    .registers 8

    .line 125
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->tvUsername:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 126
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->tvPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 130
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Please enter your username."

    invoke-static {v0, v2, v1}, Lme/drakeet/support/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/ToastCompat;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lme/drakeet/support/toast/ToastCompat;->show()V

    return-void

    .line 135
    :cond_31
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 137
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Please enter your password."

    invoke-static {v0, v2, v1}, Lme/drakeet/support/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/ToastCompat;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lme/drakeet/support/toast/ToastCompat;->show()V

    return-void

    .line 142
    :cond_45
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_5a

    .line 144
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Please enter a valid username."

    invoke-static {v0, v2, v1}, Lme/drakeet/support/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/ToastCompat;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lme/drakeet/support/toast/ToastCompat;->show()V

    return-void

    .line 149
    :cond_5a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_6e

    .line 151
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Please enter a valid password."

    invoke-static {v0, v2, v1}, Lme/drakeet/support/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/ToastCompat;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lme/drakeet/support/toast/ToastCompat;->show()V

    return-void

    .line 156
    :cond_6e
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "auth.token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 157
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "auth.token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_84
    move-object v6, v0

    goto :goto_89

    :cond_86
    const-string v0, "com.towbook.mobile"

    goto :goto_84

    .line 160
    :goto_89
    new-instance v0, Lcom/towbook/mobile/authenticator/LoginActivity$LoginTask;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/towbook/mobile/authenticator/LoginActivity$LoginTask;-><init>(Lcom/towbook/mobile/authenticator/LoginActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Lcom/towbook/mobile/authenticator/LoginActivity$LoginTask;->execute()V

    return-void
.end method


# virtual methods
.method public addAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/AccountManager;
    .registers 7

    .line 166
    :try_start_0
    iget-boolean p4, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->requestNewAccount:Z

    if-eqz p4, :cond_1d

    .line 167
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/towbook/utils/AppUtils;->removeAccount(Landroid/content/Context;)V

    const-string p4, "LoginActivity"

    const-string v0, "Removed existing accounts because we\'re adding a new account."

    .line 168
    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_1d

    :catch_13
    move-exception p4

    const-string v0, "LoginActivity"

    .line 171
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    :cond_1d
    :goto_1d
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p4

    .line 175
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-boolean p1, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->requestNewAccount:Z

    if-eqz p1, :cond_2f

    const/4 p1, 0x0

    .line 178
    invoke-virtual {p4, v0, p3, p1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_32

    .line 180
    :cond_2f
    invoke-virtual {p4, v0, p3}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    :goto_32
    return-object p4
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090568

    if-ne v0, v1, :cond_d

    .line 115
    invoke-direct {p0}, Lcom/towbook/mobile/authenticator/LoginActivity;->signIn()V

    goto :goto_33

    .line 116
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090567

    if-ne v0, v1, :cond_1a

    .line 117
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/LoginActivity;->finish()V

    goto :goto_33

    .line 118
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900ca

    if-ne p1, v0, :cond_33

    .line 119
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "http://www.towbook.com/?mobile_signup=1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/towbook/mobile/authenticator/LoginActivity;->startActivity(Landroid/content/Intent;)V

    :cond_33
    :goto_33
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 86
    invoke-super {p0, p1}, Lroboguice/activity/RoboAccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 89
    iget-object p1, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->mDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "username"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 94
    iget-object v1, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->tvUsername:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->tvUsername:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 96
    iget-object p1, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->tvUsername:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 97
    iput-boolean v0, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->requestNewAccount:Z

    .line 100
    :cond_31
    iget-object p1, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->btsignup:Landroid/widget/Button;

    const v0, 0x7f0f003c

    invoke-virtual {p0, v0}, Lcom/towbook/mobile/authenticator/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0905cb

    .line 102
    invoke-virtual {p0, p1}, Lcom/towbook/mobile/authenticator/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/towbook/utils/ViewUtils;->handleXmasLogo(Landroid/widget/ImageView;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 108
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/LoginActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 110
    invoke-super {p0}, Lroboguice/activity/RoboAccountAuthenticatorActivity;->onDestroy()V

    return-void
.end method
