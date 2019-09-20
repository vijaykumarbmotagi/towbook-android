.class final synthetic Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/towbook/mobile/TowbookCrashReportDialog;


# direct methods
.method constructor <init>(Lcom/towbook/mobile/TowbookCrashReportDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$1;->arg$1:Lcom/towbook/mobile/TowbookCrashReportDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/towbook/mobile/TowbookCrashReportDialog$$Lambda$1;->arg$1:Lcom/towbook/mobile/TowbookCrashReportDialog;

    invoke-virtual {v0, p1}, Lcom/towbook/mobile/TowbookCrashReportDialog;->lambda$onCreate$1$TowbookCrashReportDialog(Landroid/view/View;)V

    return-void
.end method
