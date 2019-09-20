.class Lcom/towbook/mobile/TowbookCrashReportDialog$1;
.super Landroid/webkit/WebViewClient;
.source "TowbookCrashReportDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/towbook/mobile/TowbookCrashReportDialog;->viewPrivacyPolicy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/towbook/mobile/TowbookCrashReportDialog;


# direct methods
.method constructor <init>(Lcom/towbook/mobile/TowbookCrashReportDialog;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/towbook/mobile/TowbookCrashReportDialog$1;->this$0:Lcom/towbook/mobile/TowbookCrashReportDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    .line 141
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
