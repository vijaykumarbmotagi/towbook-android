.class Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;
.super Lrx/Subscriber;
.source "OperatorMapResponseToBodyOrError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lretrofit2/Response<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 38
    iput-object p1, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->this$0:Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;

    iput-object p3, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 48
    iget-object v0, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 52
    iget-object v0, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 38
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->onNext(Lretrofit2/Response;)V

    return-void
.end method

.method public onNext(Lretrofit2/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 41
    iget-object v0, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->val$child:Lrx/Subscriber;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_1a

    .line 43
    :cond_10
    iget-object v0, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->val$child:Lrx/Subscriber;

    new-instance v1, Lretrofit2/adapter/rxjava/HttpException;

    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava/HttpException;-><init>(Lretrofit2/Response;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_1a
    return-void
.end method
