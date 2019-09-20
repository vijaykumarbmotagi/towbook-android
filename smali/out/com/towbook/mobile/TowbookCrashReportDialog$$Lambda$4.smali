.class final synthetic Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/towbook/mobile/TowbookCrashReportDialog;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/towbook/mobile/TowbookCrashReportDialog;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$4;->arg$1:Lcom/towbook/mobile/TowbookCrashReportDialog;

    iput-object p2, p0, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$4;->arg$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$4;->arg$1:Lcom/towbook/mobile/TowbookCrashReportDialog;

    iget-object v1, p0, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$4;->arg$2:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/towbook/mobile/TowbookCrashReportDialog;->lambda$viewError$4$TowbookCrashReportDialog(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
