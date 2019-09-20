.class public Lcom/towbook/mobile/TowbookCrashReportDialog;
.super Lorg/acra/BaseCrashReportDialog;
.source "TowbookCrashReportDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TowbookCrashReport"


# instance fields
.field mAcceptButton:Landroid/support/v7/widget/AppCompatButton;

.field mDenyButton:Landroid/support/v7/widget/AppCompatButton;

.field mErrorFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lorg/acra/BaseCrashReportDialog;-><init>()V

    return-void
.end method

.method private acceptSendingReport()V
    .registers 4

    .line 90
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "acra.alwaysaccept"

    const/4 v2, 0x1

    .line 93
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "TowbookCrashReport"

    const-string v1, "Sending crash report..."

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    const-string v1, ""

    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/TowbookCrashReportDialog;->sendCrash(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookCrashReportDialog;->finish()V

    return-void
.end method

.method static final synthetic lambda$viewPrivacyPolicy$5$TowbookCrashReportDialog(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 148
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private viewError()V
    .registers 5

    .line 104
    :try_start_0
    new-instance v0, Lcom/towbook/common/CrashReportPersister;

    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookCrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/towbook/common/CrashReportPersister;-><init>(Landroid/content/Context;)V

    .line 105
    iget-object v1, p0, Lcom/towbook/mobile/TowbookCrashReportDialog;->mErrorFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/towbook/common/CrashReportPersister;->load(Ljava/lang/String;)Lorg/acra/collector/CrashReportData;

    move-result-object v0

    .line 107
    sget-object v1, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    invoke-virtual {v0, v1}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {p0}, Lcom/towbook/utils/ViewUtils;->getAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Error Stack Trace"

    .line 109
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0030

    const/4 v3, 0x0

    .line 111
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0032

    new-instance v3, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$4;

    invoke-direct {v3, p0, v0}, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$4;-><init>(Lcom/towbook/mobile/TowbookCrashReportDialog;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_45

    :catch_3b
    const-string v0, "Couldn\'t load the error report file"

    const/4 v1, 0x1

    .line 126
    invoke-static {p0, v0, v1}, Lme/drakeet/support/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/ToastCompat;

    move-result-object v0

    invoke-virtual {v0}, Lme/drakeet/support/toast/ToastCompat;->show()V

    :goto_45
    return-void
.end method

.method private viewPrivacyPolicy()V
    .registers 5

    .line 131
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookCrashReportDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00fe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0905c9

    .line 135
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/privacy_policy.html"

    .line 136
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v3, 0x5

    .line 137
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 138
    new-instance v3, Lcom/towbook/mobile/TowbookCrashReportDialog$1;

    invoke-direct {v3, p0}, Lcom/towbook/mobile/TowbookCrashReportDialog$1;-><init>(Lcom/towbook/mobile/TowbookCrashReportDialog;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string v1, "Close"

    .line 148
    sget-object v2, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$5;->$instance:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method


# virtual methods
.method getBriefDescription()Ljava/lang/String;
    .registers 2

    const v0, 0x7f0f0099

    .line 86
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/TowbookCrashReportDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic lambda$onCreate$0$TowbookCrashReportDialog(Landroid/view/View;)V
    .registers 2

    .line 73
    invoke-direct {p0}, Lcom/towbook/mobile/TowbookCrashReportDialog;->acceptSendingReport()V

    return-void
.end method

.method final synthetic lambda$onCreate$1$TowbookCrashReportDialog(Landroid/view/View;)V
    .registers 2

    .line 75
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookCrashReportDialog;->cancelReports()V

    .line 76
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookCrashReportDialog;->finish()V

    return-void
.end method

.method final synthetic lambda$onCreate$2$TowbookCrashReportDialog(Landroid/view/View;)V
    .registers 2

    .line 81
    invoke-direct {p0}, Lcom/towbook/mobile/TowbookCrashReportDialog;->viewError()V

    return-void
.end method

.method final synthetic lambda$onCreate$3$TowbookCrashReportDialog(Landroid/view/View;)V
    .registers 2

    .line 82
    invoke-direct {p0}, Lcom/towbook/mobile/TowbookCrashReportDialog;->viewPrivacyPolicy()V

    return-void
.end method

.method final synthetic lambda$viewError$4$TowbookCrashReportDialog(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookCrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "clipboard"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string p3, "Copied Text"

    .line 115
    invoke-static {p3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    if-eqz p2, :cond_17

    .line 118
    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 120
    :cond_17
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookCrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Copied to clipboard"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lme/drakeet/support/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/ToastCompat;

    move-result-object p1

    invoke-virtual {p1}, Lme/drakeet/support/toast/ToastCompat;->show()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_25

    :catch_25
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-super {p0, p1}, Lorg/acra/BaseCrashReportDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b00ff

    .line 55
    invoke-virtual {p0, p1}, Lcom/towbook/mobile/TowbookCrashReportDialog;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookCrashReportDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f0602cd

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const p1, 0x7f0904cf

    .line 60
    invoke-virtual {p0, p1}, Lcom/towbook/mobile/TowbookCrashReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 61
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 62
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookCrashReportDialog;->getBriefDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09031f

    .line 64
    invoke-virtual {p0, p1}, Lcom/towbook/mobile/TowbookCrashReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f09018a

    .line 65
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/TowbookCrashReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Privacy Policy"

    .line 67
    invoke-static {p1, v1}, Lcom/towbook/utils/ViewUtils;->textViewAsLink(Landroid/widget/TextView;Ljava/lang/String;)V

    const-string v1, "View error details"

    .line 68
    invoke-static {v0, v1}, Lcom/towbook/utils/ViewUtils;->textViewAsLink(Landroid/widget/TextView;Ljava/lang/String;)V

    const v1, 0x7f09008d

    .line 70
    invoke-virtual {p0, v1}, Lcom/towbook/mobile/TowbookCrashReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatButton;

    iput-object v1, p0, Lcom/towbook/mobile/TowbookCrashReportDialog;->mAcceptButton:Landroid/support/v7/widget/AppCompatButton;

    const v1, 0x7f0900a7

    .line 71
    invoke-virtual {p0, v1}, Lcom/towbook/mobile/TowbookCrashReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatButton;

    iput-object v1, p0, Lcom/towbook/mobile/TowbookCrashReportDialog;->mDenyButton:Landroid/support/v7/widget/AppCompatButton;

    .line 73
    iget-object v1, p0, Lcom/towbook/mobile/TowbookCrashReportDialog;->mAcceptButton:Landroid/support/v7/widget/AppCompatButton;

    new-instance v2, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$0;

    invoke-direct {v2, p0}, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$0;-><init>(Lcom/towbook/mobile/TowbookCrashReportDialog;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/towbook/mobile/TowbookCrashReportDialog;->mDenyButton:Landroid/support/v7/widget/AppCompatButton;

    new-instance v2, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$1;

    invoke-direct {v2, p0}, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$1;-><init>(Lcom/towbook/mobile/TowbookCrashReportDialog;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookCrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "REPORT_FILE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/towbook/mobile/TowbookCrashReportDialog;->mErrorFileName:Ljava/lang/String;

    .line 81
    new-instance v1, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$2;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$2;-><init>(Lcom/towbook/mobile/TowbookCrashReportDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v0, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$3;-><init>(Lcom/towbook/mobile/TowbookCrashReportDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
