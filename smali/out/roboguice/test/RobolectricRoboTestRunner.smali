.class public Lroboguice/test/RobolectricRoboTestRunner;
.super Lcom/xtremelabs/robolectric/RobolectricTestRunner;
.source "RobolectricRoboTestRunner.java"


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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/xtremelabs/robolectric/RobolectricTestRunner;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/xtremelabs/robolectric/RobolectricConfig;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/xtremelabs/robolectric/RobolectricConfig;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xtremelabs/robolectric/RobolectricTestRunner;-><init>(Ljava/lang/Class;Lcom/xtremelabs/robolectric/RobolectricConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/xtremelabs/robolectric/bytecode/ClassHandler;Lcom/xtremelabs/robolectric/RobolectricConfig;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/xtremelabs/robolectric/bytecode/ClassHandler;",
            "Lcom/xtremelabs/robolectric/RobolectricConfig;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/xtremelabs/robolectric/RobolectricTestRunner;-><init>(Ljava/lang/Class;Lcom/xtremelabs/robolectric/bytecode/ClassHandler;Lcom/xtremelabs/robolectric/RobolectricConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/xtremelabs/robolectric/bytecode/ClassHandler;Lcom/xtremelabs/robolectric/bytecode/RobolectricClassLoader;Lcom/xtremelabs/robolectric/RobolectricConfig;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/xtremelabs/robolectric/bytecode/ClassHandler;",
            "Lcom/xtremelabs/robolectric/bytecode/RobolectricClassLoader;",
            "Lcom/xtremelabs/robolectric/RobolectricConfig;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xtremelabs/robolectric/RobolectricTestRunner;-><init>(Ljava/lang/Class;Lcom/xtremelabs/robolectric/bytecode/ClassHandler;Lcom/xtremelabs/robolectric/bytecode/RobolectricClassLoader;Lcom/xtremelabs/robolectric/RobolectricConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/xtremelabs/robolectric/RobolectricTestRunner;-><init>(Ljava/lang/Class;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/io/File;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/xtremelabs/robolectric/RobolectricTestRunner;-><init>(Ljava/lang/Class;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method protected bindShadowClasses()V
    .registers 2

    .line 42
    invoke-super {p0}, Lcom/xtremelabs/robolectric/RobolectricTestRunner;->bindShadowClasses()V

    .line 43
    const-class v0, Lroboguice/test/shadow/ShadowFragmentActivity;

    invoke-static {v0}, Lcom/xtremelabs/robolectric/Robolectric;->bindShadowClass(Ljava/lang/Class;)V

    .line 44
    const-class v0, Lroboguice/test/shadow/ShadowFragment;

    invoke-static {v0}, Lcom/xtremelabs/robolectric/Robolectric;->bindShadowClass(Ljava/lang/Class;)V

    return-void
.end method
