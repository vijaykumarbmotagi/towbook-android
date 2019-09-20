.class public Lcom/google/android/libraries/places/internal/ft;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/lm;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/lm;"
    }
.end annotation


# instance fields
.field public final a:Lcom/android/volley/RequestQueue;

.field public final b:Lcom/google/android/libraries/places/internal/di;


# direct methods
.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/google/android/libraries/places/internal/di;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ft;->a:Lcom/android/volley/RequestQueue;

    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/ft;->b:Lcom/google/android/libraries/places/internal/di;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/gms/clearcut/ClearcutLogger;Lcom/google/android/libraries/places/internal/dn;Lcom/google/android/libraries/places/internal/dq;)Lcom/google/android/libraries/places/internal/dj;
    .registers 4

    .line 2
    new-instance v0, Lcom/google/android/libraries/places/internal/dj;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/dj;-><init>(Lcom/google/android/gms/clearcut/ClearcutLogger;Lcom/google/android/libraries/places/internal/dn;Lcom/google/android/libraries/places/internal/dq;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/volley/toolbox/JsonObjectRequest;)V
    .registers 1

    .line 21
    invoke-virtual {p0}, Lcom/android/volley/toolbox/JsonObjectRequest;->cancel()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/android/volley/VolleyError;)V
    .registers 2

    .line 23
    :try_start_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/k;->a(Lcom/android/volley/VolleyError;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 26
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 27
    throw p0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;
    .registers 14
    .param p6    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<HttpJsonResponseT:",
            "Lcom/google/android/libraries/places/internal/s<",
            "Ljava/lang/Object;",
            "+",
            "Lcom/google/android/libraries/places/internal/ax;",
            ">;>(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "THttpJsonResponseT;>;",
            "Lcom/google/android/gms/tasks/CancellationToken;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "THttpJsonResponseT;>;"
        }
    .end annotation

    if-eqz p6, :cond_8

    .line 14
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1, p6}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    goto :goto_d

    .line 15
    :cond_8
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 16
    :goto_d
    new-instance p4, Lcom/google/android/libraries/places/internal/o;

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/libraries/places/internal/l;

    invoke-direct {v4, p0, p5, p1}, Lcom/google/android/libraries/places/internal/l;-><init>(Lcom/google/android/libraries/places/internal/ft;Ljava/lang/Class;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance v5, Lcom/google/android/libraries/places/internal/m;

    invoke-direct {v5, p1}, Lcom/google/android/libraries/places/internal/m;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v0, p4

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/o;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V

    if-eqz p6, :cond_2b

    .line 18
    new-instance p2, Lcom/google/android/libraries/places/internal/n;

    invoke-direct {p2, p4}, Lcom/google/android/libraries/places/internal/n;-><init>(Lcom/android/volley/toolbox/JsonObjectRequest;)V

    invoke-virtual {p6, p2}, Lcom/google/android/gms/tasks/CancellationToken;->onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    .line 19
    :cond_2b
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/ft;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {p2, p4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/android/libraries/places/internal/r;Ljava/lang/Class;)Lcom/google/android/gms/tasks/Task;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<HttpJsonResponseT:",
            "Lcom/google/android/libraries/places/internal/s<",
            "Ljava/lang/Object;",
            "+",
            "Lcom/google/android/libraries/places/internal/ax;",
            ">;>(",
            "Lcom/google/android/libraries/places/internal/r<",
            "Ljava/lang/Object;",
            "+",
            "Lcom/google/android/libraries/places/internal/aw;",
            ">;",
            "Ljava/lang/Class<",
            "THttpJsonResponseT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "THttpJsonResponseT;>;"
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/r;->c()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/r;->b()Ljava/util/Map;

    move-result-object v3

    .line 11
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/r;->a()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    .line 12
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/ft;->a(ILjava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Class;Lcom/google/android/gms/tasks/TaskCompletionSource;Lorg/json/JSONObject;)V
    .registers 6

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ft;->b:Lcom/google/android/libraries/places/internal/di;

    .line 29
    instance-of v1, p3, Lorg/json/JSONObject;

    if-nez v1, :cond_b

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_11

    :cond_b
    check-cast p3, Lorg/json/JSONObject;

    invoke-static {p3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    :goto_11
    invoke-virtual {v0, p3, p1}, Lcom/google/android/libraries/places/internal/di;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/s;

    .line 30
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Lcom/google/android/libraries/places/internal/t; {:try_start_0 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p1

    goto :goto_26

    :catch_1d
    move-exception p1

    .line 34
    :try_start_1e
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/k;->a(Lcom/google/android/libraries/places/internal/t;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    .line 35
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z
    :try_end_25
    .catch Ljava/lang/Error; {:try_start_1e .. :try_end_25} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_25} :catch_1b

    return-void

    .line 38
    :goto_26
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 39
    throw p1
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 3
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
