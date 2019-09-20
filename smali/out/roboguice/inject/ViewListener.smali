.class public Lroboguice/inject/ViewListener;
.super Ljava/lang/Object;
.source "ViewListener.java"

# interfaces
.implements Lcom/google/inject/spi/TypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/inject/ViewListener$ViewMembersInjector;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field protected static fragmentClass:Ljava/lang/Class;

.field protected static fragmentFindFragmentByIdMethod:Ljava/lang/reflect/Method;

.field protected static fragmentFindFragmentByTagMethod:Ljava/lang/reflect/Method;

.field protected static fragmentGetViewMethod:Ljava/lang/reflect/Method;

.field protected static fragmentManagerClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    :try_start_0
    const-string v0, "android.support.v4.app.Fragment"

    .line 49
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lroboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    const-string v0, "android.support.v4.app.FragmentManager"

    .line 50
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lroboguice/inject/ViewListener;->fragmentManagerClass:Ljava/lang/Class;

    .line 51
    sget-object v0, Lroboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    const-string v1, "getView"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lroboguice/inject/ViewListener;->fragmentGetViewMethod:Ljava/lang/reflect/Method;

    .line 52
    sget-object v0, Lroboguice/inject/ViewListener;->fragmentManagerClass:Ljava/lang/Class;

    const-string v1, "findFragmentById"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lroboguice/inject/ViewListener;->fragmentFindFragmentByIdMethod:Ljava/lang/reflect/Method;

    .line 53
    sget-object v0, Lroboguice/inject/ViewListener;->fragmentManagerClass:Ljava/lang/Class;

    const-string v1, "findFragmentByTag"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lroboguice/inject/ViewListener;->fragmentFindFragmentByTagMethod:Ljava/lang/reflect/Method;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hear(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeEncounter;)V
    .registers 9
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

    .line 59
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p1

    :goto_4
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_d9

    .line 60
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_d3

    aget-object v3, v0, v2

    .line 61
    const-class v4, Lroboguice/inject/InjectView;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 62
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 63
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Views may not be statically injected"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2c
    const-class v4, Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 65
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You may only use @InjectView on fields descended from type View"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_40
    const-class v4, Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_60

    const-class v4, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 67
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You may only use @InjectView in Activity contexts"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_60
    new-instance v4, Lroboguice/inject/ViewListener$ViewMembersInjector;

    const-class v5, Lroboguice/inject/InjectView;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    invoke-direct {v4, v3, v5, p2}, Lroboguice/inject/ViewListener$ViewMembersInjector;-><init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;Lcom/google/inject/spi/TypeEncounter;)V

    invoke-interface {p2, v4}, Lcom/google/inject/spi/TypeEncounter;->register(Lcom/google/inject/MembersInjector;)V

    goto :goto_cf

    .line 72
    :cond_6f
    const-class v4, Lroboguice/inject/InjectFragment;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 73
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 74
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Fragments may not be statically injected"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_89
    sget-object v4, Lroboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    if-eqz v4, :cond_a1

    sget-object v4, Lroboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_a1

    .line 76
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You may only use @InjectFragment on fields descended from type Fragment"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_a1
    const-class v4, Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_c1

    const-class v4, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_c1

    .line 78
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You may only use @InjectFragment in Activity contexts"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_c1
    new-instance v4, Lroboguice/inject/ViewListener$ViewMembersInjector;

    const-class v5, Lroboguice/inject/InjectFragment;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    invoke-direct {v4, v3, v5, p2}, Lroboguice/inject/ViewListener$ViewMembersInjector;-><init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;Lcom/google/inject/spi/TypeEncounter;)V

    invoke-interface {p2, v4}, Lcom/google/inject/spi/TypeEncounter;->register(Lcom/google/inject/MembersInjector;)V

    :cond_cf
    :goto_cf
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    .line 59
    :cond_d3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_4

    :cond_d9
    return-void
.end method
