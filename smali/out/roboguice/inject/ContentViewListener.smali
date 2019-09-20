.class public Lroboguice/inject/ContentViewListener;
.super Ljava/lang/Object;
.source "ContentViewListener.java"


# annotations
.annotation runtime Lroboguice/inject/ContextSingleton;
.end annotation


# instance fields
.field protected activity:Landroid/app/Activity;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public optionallySetContentView(Lroboguice/activity/event/OnCreateEvent;)V
    .registers 3
    .param p1    # Lroboguice/activity/event/OnCreateEvent;
        .annotation runtime Lroboguice/event/Observes;
        .end annotation
    .end param

    .line 17
    iget-object p1, p0, Lroboguice/inject/ContentViewListener;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 18
    :goto_6
    const-class v0, Landroid/content/Context;

    if-eq p1, v0, :cond_23

    .line 19
    const-class v0, Lroboguice/inject/ContentView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lroboguice/inject/ContentView;

    if-eqz v0, :cond_1e

    .line 21
    iget-object p1, p0, Lroboguice/inject/ContentViewListener;->activity:Landroid/app/Activity;

    invoke-interface {v0}, Lroboguice/inject/ContentView;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    return-void

    .line 24
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_6

    :cond_23
    return-void
.end method
