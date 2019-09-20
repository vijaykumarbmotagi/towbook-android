.class Lorg/acra/ErrorReporter$5;
.super Ljava/lang/Thread;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/ErrorReporter;->report(Lorg/acra/ErrorReporter$ReportBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/ErrorReporter;

.field final synthetic val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

.field final synthetic val$reportFileName:Ljava/lang/String;

.field final synthetic val$showDirectDialog:Z

.field final synthetic val$worker:Lorg/acra/SendWorker;


# direct methods
.method constructor <init>(Lorg/acra/ErrorReporter;Lorg/acra/SendWorker;ZLjava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)V
    .registers 6

    .line 806
    iput-object p1, p0, Lorg/acra/ErrorReporter$5;->this$0:Lorg/acra/ErrorReporter;

    iput-object p2, p0, Lorg/acra/ErrorReporter$5;->val$worker:Lorg/acra/SendWorker;

    iput-boolean p3, p0, Lorg/acra/ErrorReporter$5;->val$showDirectDialog:Z

    iput-object p4, p0, Lorg/acra/ErrorReporter$5;->val$reportFileName:Ljava/lang/String;

    iput-object p5, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 812
    invoke-static {}, Lorg/acra/ErrorReporter;->access$1100()Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lorg/acra/ErrorReporter$5;->val$worker:Lorg/acra/SendWorker;

    if-nez v0, :cond_b

    goto :goto_62

    .line 816
    :cond_b
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/acra/ErrorReporter;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "Toast "

    goto :goto_22

    :cond_20
    const-string v2, " -- "

    :goto_22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/acra/ErrorReporter$5;->val$worker:Lorg/acra/SendWorker;

    invoke-virtual {v2}, Lorg/acra/SendWorker;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "and Worker"

    goto :goto_32

    :cond_30
    const-string v2, ""

    :goto_32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :goto_3c
    invoke-static {}, Lorg/acra/ErrorReporter;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lorg/acra/ErrorReporter$5;->val$worker:Lorg/acra/SendWorker;

    invoke-virtual {v0}, Lorg/acra/SendWorker;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_53

    .line 824
    :cond_4b
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Finished waiting for Toast + Worker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :cond_53
    :goto_53
    const-wide/16 v0, 0x64

    .line 819
    :try_start_55
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_3c

    :catch_59
    move-exception v0

    .line 821
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 814
    :cond_62
    :goto_62
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Toast (if any) and worker completed - not waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :goto_69
    iget-boolean v0, p0, Lorg/acra/ErrorReporter$5;->val$showDirectDialog:Z

    if-eqz v0, :cond_9d

    .line 831
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating CrashReportDialog for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/acra/ErrorReporter$5;->val$reportFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v0, p0, Lorg/acra/ErrorReporter$5;->this$0:Lorg/acra/ErrorReporter;

    iget-object v1, p0, Lorg/acra/ErrorReporter$5;->val$reportFileName:Ljava/lang/String;

    iget-object v2, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v0, v1, v2}, Lorg/acra/ErrorReporter;->access$1200(Lorg/acra/ErrorReporter;Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 833
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 834
    iget-object v1, p0, Lorg/acra/ErrorReporter$5;->this$0:Lorg/acra/ErrorReporter;

    invoke-static {v1}, Lorg/acra/ErrorReporter;->access$400(Lorg/acra/ErrorReporter;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 837
    :cond_9d
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for Toast + worker ended. Kill Application ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v2}, Lorg/acra/ErrorReporter$ReportBuilder;->access$900(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->access$900(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 840
    iget-object v0, p0, Lorg/acra/ErrorReporter$5;->this$0:Lorg/acra/ErrorReporter;

    iget-object v1, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$800(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v2}, Lorg/acra/ErrorReporter$ReportBuilder;->access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/acra/ErrorReporter;->access$1300(Lorg/acra/ErrorReporter;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_d2
    return-void
.end method
