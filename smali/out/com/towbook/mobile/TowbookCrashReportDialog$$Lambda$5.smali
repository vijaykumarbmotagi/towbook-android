.class final synthetic Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final $instance:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$5;

    invoke-direct {v0}, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$5;-><init>()V

    sput-object v0, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$5;->$instance:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/towbook/mobile/TowbookCrashReportDialog;->lambda$viewPrivacyPolicy$5$TowbookCrashReportDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
