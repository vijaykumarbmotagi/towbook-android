.class public Lroboguice/inject/ResourceListener;
.super Ljava/lang/Object;
.source "ResourceListener.java"

# interfaces
.implements Lcom/google/inject/spi/TypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/inject/ResourceListener$ResourceMembersInjector;
    }
.end annotation


# instance fields
.field protected application:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lroboguice/inject/ResourceListener;->application:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public hear(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeEncounter;)V
    .registers 10
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

    .line 48
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p1

    :goto_4
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_3e

    .line 49
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_39

    aget-object v3, v0, v2

    .line 50
    const-class v4, Lroboguice/inject/InjectResource;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_36

    .line 51
    new-instance v4, Lroboguice/inject/ResourceListener$ResourceMembersInjector;

    iget-object v5, p0, Lroboguice/inject/ResourceListener;->application:Landroid/app/Application;

    const-class v6, Lroboguice/inject/InjectResource;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lroboguice/inject/InjectResource;

    invoke-direct {v4, v3, v5, v6}, Lroboguice/inject/ResourceListener$ResourceMembersInjector;-><init>(Ljava/lang/reflect/Field;Landroid/app/Application;Lroboguice/inject/InjectResource;)V

    invoke-interface {p2, v4}, Lcom/google/inject/spi/TypeEncounter;->register(Lcom/google/inject/MembersInjector;)V

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 48
    :cond_39
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_4

    :cond_3e
    return-void
.end method

.method public varargs requestStaticInjection([Ljava/lang/Class;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 58
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_45

    aget-object v3, p1, v2

    .line 59
    :goto_7
    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_42

    .line 60
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v5, :cond_3d

    aget-object v7, v4, v6

    .line 61
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_3a

    const-class v8, Lroboguice/inject/InjectResource;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 62
    new-instance v8, Lroboguice/inject/ResourceListener$ResourceMembersInjector;

    iget-object v9, p0, Lroboguice/inject/ResourceListener;->application:Landroid/app/Application;

    const-class v10, Lroboguice/inject/InjectResource;

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lroboguice/inject/InjectResource;

    invoke-direct {v8, v7, v9, v10}, Lroboguice/inject/ResourceListener$ResourceMembersInjector;-><init>(Ljava/lang/reflect/Field;Landroid/app/Application;Lroboguice/inject/InjectResource;)V

    const/4 v7, 0x0

    invoke-virtual {v8, v7}, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->injectMembers(Ljava/lang/Object;)V

    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 59
    :cond_3d
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_7

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_45
    return-void
.end method
