.class public Lorg/junit/internal/builders/IgnoredClassRunner;
.super Lorg/junit/runner/Runner;
.source "IgnoredClassRunner.java"


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/junit/internal/builders/IgnoredClassRunner;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getDescription()Lorg/junit/runner/Description;
    .registers 2

    .line 21
    iget-object v0, p0, Lorg/junit/internal/builders/IgnoredClassRunner;->clazz:Ljava/lang/Class;

    invoke-static {v0}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/Class;)Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .registers 3

    .line 16
    invoke-virtual {p0}, Lorg/junit/internal/builders/IgnoredClassRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/junit/runner/notification/RunNotifier;->fireTestIgnored(Lorg/junit/runner/Description;)V

    return-void
.end method