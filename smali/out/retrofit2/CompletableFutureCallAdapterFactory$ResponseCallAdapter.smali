.class final Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;
.super Ljava/lang/Object;
.source "CompletableFutureCallAdapterFactory.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/CompletableFutureCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResponseCallAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "TR;",
        "Ljava/util/concurrent/CompletableFuture<",
        "Lretrofit2/Response<",
        "TR;>;>;>;"
    }
.end annotation

.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# instance fields
.field private final responseType:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;->adapt(Lretrofit2/Call;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public adapt(Lretrofit2/Call;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lretrofit2/Response<",
            "TR;>;>;"
        }
    .end annotation

    .line 108
    new-instance v0, Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$1;

    invoke-direct {v0, p0, p1}, Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$1;-><init>(Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;Lretrofit2/Call;)V

    .line 117
    new-instance v1, Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$2;

    invoke-direct {v1, p0, v0}, Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$2;-><init>(Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .registers 2

    .line 104
    iget-object v0, p0, Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
