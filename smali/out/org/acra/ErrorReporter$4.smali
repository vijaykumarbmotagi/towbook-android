.class Lorg/acra/ErrorReporter$4;
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

.field final synthetic val$sentToastTimeMillis:Lorg/acra/ErrorReporter$TimeHelper;


# direct methods
.method constructor <init>(Lorg/acra/ErrorReporter;Lorg/acra/ErrorReporter$TimeHelper;)V
    .registers 3

    .line 780
    iput-object p1, p0, Lorg/acra/ErrorReporter$4;->this$0:Lorg/acra/ErrorReporter;

    iput-object p2, p0, Lorg/acra/ErrorReporter$4;->val$sentToastTimeMillis:Lorg/acra/ErrorReporter$TimeHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 784
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for 2000 millis from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/acra/ErrorReporter$4;->val$sentToastTimeMillis:Lorg/acra/ErrorReporter$TimeHelper;

    invoke-static {v2}, Lorg/acra/ErrorReporter$TimeHelper;->access$1000(Lorg/acra/ErrorReporter$TimeHelper;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " currentMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :goto_28
    iget-object v0, p0, Lorg/acra/ErrorReporter$4;->val$sentToastTimeMillis:Lorg/acra/ErrorReporter$TimeHelper;

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$TimeHelper;->getElapsedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gez v4, :cond_43

    const-wide/16 v0, 0x64

    .line 790
    :try_start_36
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_28

    :catch_3a
    move-exception v0

    .line 792
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interrupted while waiting for Toast to end."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :cond_43
    const/4 v0, 0x1

    .line 795
    invoke-static {v0}, Lorg/acra/ErrorReporter;->access$1102(Z)Z

    return-void
.end method
