.class public Lroboguice/event/ObservesTypeListener;
.super Ljava/lang/Object;
.source "ObservesTypeListener.java"

# interfaces
.implements Lcom/google/inject/spi/TypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;
    }
.end annotation


# instance fields
.field protected eventManagerProvider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider<",
            "Lroboguice/event/EventManager;",
            ">;"
        }
    .end annotation
.end field

.field protected observerThreadingDecorator:Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;


# direct methods
.method public constructor <init>(Lcom/google/inject/Provider;Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider<",
            "Lroboguice/event/EventManager;",
            ">;",
            "Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lroboguice/event/ObservesTypeListener;->eventManagerProvider:Lcom/google/inject/Provider;

    .line 28
    iput-object p2, p0, Lroboguice/event/ObservesTypeListener;->observerThreadingDecorator:Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;

    return-void
.end method


# virtual methods
.method protected checkMethodParameters(Ljava/lang/reflect/Method;)V
    .registers 3

    .line 77
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_10

    .line 78
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Annotation @Observes must only annotate one parameter, which must be the only parameter in the listener method."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    return-void
.end method

.method protected findContextObserver(Ljava/lang/reflect/Method;Lcom/google/inject/spi/TypeEncounter;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Lcom/google/inject/spi/TypeEncounter<",
            "TI;>;)V"
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 46
    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_32

    .line 47
    aget-object v3, v0, v2

    .line 48
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 49
    aget-object v4, v4, v2

    .line 51
    array-length v5, v3

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v5, :cond_2f

    aget-object v7, v3, v6

    .line 52
    invoke-interface {v7}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lroboguice/event/Observes;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 53
    check-cast v7, Lroboguice/event/Observes;

    invoke-interface {v7}, Lroboguice/event/Observes;->value()Lroboguice/event/EventThread;

    move-result-object v7

    invoke-virtual {p0, p2, p1, v4, v7}, Lroboguice/event/ObservesTypeListener;->registerContextObserver(Lcom/google/inject/spi/TypeEncounter;Ljava/lang/reflect/Method;Ljava/lang/Class;Lroboguice/event/EventThread;)V

    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_32
    return-void
.end method

.method public hear(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeEncounter;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TI;>;",
            "Lcom/google/inject/spi/TypeEncounter<",
            "TI;>;)V"
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p1

    :goto_4
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_3b

    .line 33
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    .line 34
    invoke-virtual {p0, v4, p2}, Lroboguice/event/ObservesTypeListener;->findContextObserver(Ljava/lang/reflect/Method;Lcom/google/inject/spi/TypeEncounter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 36
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v1, :cond_36

    aget-object v4, v0, v3

    .line 37
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_29
    if-ge v6, v5, :cond_33

    aget-object v7, v4, v6

    .line 38
    invoke-virtual {p0, v7, p2}, Lroboguice/event/ObservesTypeListener;->findContextObserver(Ljava/lang/reflect/Method;Lcom/google/inject/spi/TypeEncounter;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 32
    :cond_36
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_4

    :cond_3b
    return-void
.end method

.method protected registerContextObserver(Lcom/google/inject/spi/TypeEncounter;Ljava/lang/reflect/Method;Ljava/lang/Class;Lroboguice/event/EventThread;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/TypeEncounter<",
            "TI;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lroboguice/event/EventThread;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p2}, Lroboguice/event/ObservesTypeListener;->checkMethodParameters(Ljava/lang/reflect/Method;)V

    .line 68
    new-instance v6, Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;

    iget-object v1, p0, Lroboguice/event/ObservesTypeListener;->eventManagerProvider:Lcom/google/inject/Provider;

    iget-object v2, p0, Lroboguice/event/ObservesTypeListener;->observerThreadingDecorator:Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;

    move-object v0, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;-><init>(Lcom/google/inject/Provider;Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;Ljava/lang/reflect/Method;Ljava/lang/Class;Lroboguice/event/EventThread;)V

    invoke-interface {p1, v6}, Lcom/google/inject/spi/TypeEncounter;->register(Lcom/google/inject/spi/InjectionListener;)V

    return-void
.end method
