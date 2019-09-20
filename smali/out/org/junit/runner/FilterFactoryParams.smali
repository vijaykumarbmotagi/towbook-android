.class public final Lorg/junit/runner/FilterFactoryParams;
.super Ljava/lang/Object;
.source "FilterFactoryParams.java"


# instance fields
.field private final args:Ljava/lang/String;

.field private final topLevelDescription:Lorg/junit/runner/Description;


# direct methods
.method public constructor <init>(Lorg/junit/runner/Description;Ljava/lang/String;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_d

    if-nez p1, :cond_8

    goto :goto_d

    .line 12
    :cond_8
    iput-object p1, p0, Lorg/junit/runner/FilterFactoryParams;->topLevelDescription:Lorg/junit/runner/Description;

    .line 13
    iput-object p2, p0, Lorg/junit/runner/FilterFactoryParams;->args:Ljava/lang/String;

    return-void

    .line 9
    :cond_d
    :goto_d
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getArgs()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lorg/junit/runner/FilterFactoryParams;->args:Ljava/lang/String;

    return-object v0
.end method

.method public getTopLevelDescription()Lorg/junit/runner/Description;
    .registers 2

    .line 21
    iget-object v0, p0, Lorg/junit/runner/FilterFactoryParams;->topLevelDescription:Lorg/junit/runner/Description;

    return-object v0
.end method
