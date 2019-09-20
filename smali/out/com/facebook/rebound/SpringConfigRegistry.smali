.class public Lcom/facebook/rebound/SpringConfigRegistry;
.super Ljava/lang/Object;
.source "SpringConfigRegistry.java"


# static fields
.field private static final INSTANCE:Lcom/facebook/rebound/SpringConfigRegistry;


# instance fields
.field private final mSpringConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/rebound/SpringConfig;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/facebook/rebound/SpringConfigRegistry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/facebook/rebound/SpringConfigRegistry;-><init>(Z)V

    sput-object v0, Lcom/facebook/rebound/SpringConfigRegistry;->INSTANCE:Lcom/facebook/rebound/SpringConfigRegistry;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    if-eqz p1, :cond_13

    .line 36
    sget-object p1, Lcom/facebook/rebound/SpringConfig;->defaultConfig:Lcom/facebook/rebound/SpringConfig;

    const-string v0, "default config"

    invoke-virtual {p0, p1, v0}, Lcom/facebook/rebound/SpringConfigRegistry;->addSpringConfig(Lcom/facebook/rebound/SpringConfig;Ljava/lang/String;)Z

    :cond_13
    return-void
.end method

.method public static getInstance()Lcom/facebook/rebound/SpringConfigRegistry;
    .registers 1

    .line 25
    sget-object v0, Lcom/facebook/rebound/SpringConfigRegistry;->INSTANCE:Lcom/facebook/rebound/SpringConfigRegistry;

    return-object v0
.end method


# virtual methods
.method public addSpringConfig(Lcom/facebook/rebound/SpringConfig;Ljava/lang/String;)Z
    .registers 4

    if-nez p1, :cond_a

    .line 50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "springConfig is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-nez p2, :cond_14

    .line 53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "configName is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_14
    iget-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p1, 0x0

    return p1

    .line 58
    :cond_1e
    iget-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public getAllSpringConfig()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/facebook/rebound/SpringConfig;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public removeAllSpringConfig()V
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeSpringConfig(Lcom/facebook/rebound/SpringConfig;)Z
    .registers 3

    if-nez p1, :cond_a

    .line 69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "springConfig is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_a
    iget-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method
