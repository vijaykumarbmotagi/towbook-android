.class Lorg/junit/rules/TestWatchman$1;
.super Lorg/junit/runners/model/Statement;
.source "TestWatchman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/rules/TestWatchman;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/rules/TestWatchman;

.field final synthetic val$base:Lorg/junit/runners/model/Statement;

.field final synthetic val$method:Lorg/junit/runners/model/FrameworkMethod;


# direct methods
.method constructor <init>(Lorg/junit/rules/TestWatchman;Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runners/model/Statement;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lorg/junit/rules/TestWatchman$1;->this$0:Lorg/junit/rules/TestWatchman;

    iput-object p2, p0, Lorg/junit/rules/TestWatchman$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    iput-object p3, p0, Lorg/junit/rules/TestWatchman$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/junit/rules/TestWatchman$1;->this$0:Lorg/junit/rules/TestWatchman;

    iget-object v1, p0, Lorg/junit/rules/TestWatchman$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v0, v1}, Lorg/junit/rules/TestWatchman;->starting(Lorg/junit/runners/model/FrameworkMethod;)V

    .line 53
    :try_start_7
    iget-object v0, p0, Lorg/junit/rules/TestWatchman$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 54
    iget-object v0, p0, Lorg/junit/rules/TestWatchman$1;->this$0:Lorg/junit/rules/TestWatchman;

    iget-object v1, p0, Lorg/junit/rules/TestWatchman$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v0, v1}, Lorg/junit/rules/TestWatchman;->succeeded(Lorg/junit/runners/model/FrameworkMethod;)V
    :try_end_13
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_7 .. :try_end_13} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_13} :catch_1d
    .catchall {:try_start_7 .. :try_end_13} :catchall_1b

    .line 61
    iget-object v0, p0, Lorg/junit/rules/TestWatchman$1;->this$0:Lorg/junit/rules/TestWatchman;

    iget-object v1, p0, Lorg/junit/rules/TestWatchman$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v0, v1}, Lorg/junit/rules/TestWatchman;->finished(Lorg/junit/runners/model/FrameworkMethod;)V

    return-void

    :catchall_1b
    move-exception v0

    goto :goto_28

    :catch_1d
    move-exception v0

    .line 58
    :try_start_1e
    iget-object v1, p0, Lorg/junit/rules/TestWatchman$1;->this$0:Lorg/junit/rules/TestWatchman;

    iget-object v2, p0, Lorg/junit/rules/TestWatchman$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v1, v0, v2}, Lorg/junit/rules/TestWatchman;->failed(Ljava/lang/Throwable;Lorg/junit/runners/model/FrameworkMethod;)V

    .line 59
    throw v0

    :catch_26
    move-exception v0

    .line 56
    throw v0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_1b

    .line 61
    :goto_28
    iget-object v1, p0, Lorg/junit/rules/TestWatchman$1;->this$0:Lorg/junit/rules/TestWatchman;

    iget-object v2, p0, Lorg/junit/rules/TestWatchman$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v1, v2}, Lorg/junit/rules/TestWatchman;->finished(Lorg/junit/runners/model/FrameworkMethod;)V

    throw v0
.end method
