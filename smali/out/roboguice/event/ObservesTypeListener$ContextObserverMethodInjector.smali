.class public Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;
.super Ljava/lang/Object;
.source "ObservesTypeListener.java"

# interfaces
.implements Lcom/google/inject/spi/InjectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lroboguice/event/ObservesTypeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextObserverMethodInjector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/InjectionListener<",
        "TI;>;"
    }
.end annotation


# instance fields
.field protected event:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected eventManagerProvider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider<",
            "Lroboguice/event/EventManager;",
            ">;"
        }
    .end annotation
.end field

.field protected method:Ljava/lang/reflect/Method;

.field protected observerThreadingDecorator:Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;

.field protected threadType:Lroboguice/event/EventThread;


# direct methods
.method public constructor <init>(Lcom/google/inject/Provider;Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;Ljava/lang/reflect/Method;Ljava/lang/Class;Lroboguice/event/EventThread;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider<",
            "Lroboguice/event/EventManager;",
            ">;",
            "Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lroboguice/event/EventThread;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;->observerThreadingDecorator:Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;

    .line 98
    iput-object p1, p0, Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;->eventManagerProvider:Lcom/google/inject/Provider;

    .line 99
    iput-object p3, p0, Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;->method:Ljava/lang/reflect/Method;

    .line 100
    iput-object p4, p0, Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;->event:Ljava/lang/Class;

    .line 101
    iput-object p5, p0, Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;->threadType:Lroboguice/event/EventThread;

    return-void
.end method


# virtual methods
.method public afterInjection(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;->eventManagerProvider:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lroboguice/event/EventManager;

    iget-object v1, p0, Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;->event:Ljava/lang/Class;

    iget-object v2, p0, Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;->observerThreadingDecorator:Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;

    iget-object v3, p0, Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;->threadType:Lroboguice/event/EventThread;

    new-instance v4, Lroboguice/event/eventListener/ObserverMethodListener;

    iget-object v5, p0, Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;->method:Ljava/lang/reflect/Method;

    invoke-direct {v4, p1, v5}, Lroboguice/event/eventListener/ObserverMethodListener;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-virtual {v2, v3, v4}, Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;->decorate(Lroboguice/event/EventThread;Lroboguice/event/EventListener;)Lroboguice/event/EventListener;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lroboguice/event/EventManager;->registerObserver(Ljava/lang/Class;Lroboguice/event/EventListener;)V

    return-void
.end method