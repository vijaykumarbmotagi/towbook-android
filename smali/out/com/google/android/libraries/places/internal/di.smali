.class public Lcom/google/android/libraries/places/internal/di;
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
.field public final a:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/di;->a:Lcom/google/gson/Gson;

    return-void
.end method

.method public static a(Lcom/bumptech/glide/RequestManager;)Lcom/google/android/libraries/places/internal/dh;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/dh;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/dh;-><init>(Lcom/bumptech/glide/RequestManager;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/places/internal/t;
        }
    .end annotation

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/di;->a:Lcom/google/gson/Gson;

    instance-of v1, v0, Lcom/google/gson/Gson;

    if-nez v1, :cond_b

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_11

    :cond_b
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, p1, p2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_11
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-object p1

    .line 5
    :catch_12
    new-instance p1, Lcom/google/android/libraries/places/internal/t;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Could not convert JSON string to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " due to syntax errors."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/t;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 2
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
