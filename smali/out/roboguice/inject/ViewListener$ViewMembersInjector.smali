.class public Lroboguice/inject/ViewListener$ViewMembersInjector;
.super Ljava/lang/Object;
.source "ViewListener.java"

# interfaces
.implements Lcom/google/inject/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lroboguice/inject/ViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewMembersInjector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/MembersInjector<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static viewMembersInjectors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lroboguice/inject/ViewListener$ViewMembersInjector<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected activityProvider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected annotation:Ljava/lang/annotation/Annotation;

.field protected field:Ljava/lang/reflect/Field;

.field protected fragmentManagerProvider:Lcom/google/inject/Provider;

.field protected instanceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lroboguice/inject/ViewListener$ViewMembersInjector;->viewMembersInjectors:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;Lcom/google/inject/spi/TypeEncounter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/google/inject/spi/TypeEncounter<",
            "TT;>;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    .line 100
    iput-object p2, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    .line 101
    const-class p1, Landroid/app/Activity;

    invoke-interface {p3, p1}, Lcom/google/inject/spi/TypeEncounter;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->activityProvider:Lcom/google/inject/Provider;

    .line 103
    sget-object p1, Lroboguice/inject/ViewListener;->fragmentManagerClass:Ljava/lang/Class;

    if-eqz p1, :cond_1b

    .line 104
    sget-object p1, Lroboguice/inject/ViewListener;->fragmentManagerClass:Ljava/lang/Class;

    invoke-interface {p3, p1}, Lcom/google/inject/spi/TypeEncounter;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->fragmentManagerProvider:Lcom/google/inject/Provider;

    :cond_1b
    return-void
.end method

.method protected static injectViews(Ljava/lang/Object;)V
    .registers 4

    .line 241
    const-class v0, Lroboguice/inject/ViewListener$ViewMembersInjector;

    monitor-enter v0

    .line 243
    :try_start_3
    sget-object v1, Lroboguice/inject/ViewListener$ViewMembersInjector;->viewMembersInjectors:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_21

    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lroboguice/inject/ViewListener$ViewMembersInjector;

    .line 246
    invoke-virtual {v2, p0}, Lroboguice/inject/ViewListener$ViewMembersInjector;->reallyInjectMembers(Ljava/lang/Object;)V

    goto :goto_11

    .line 247
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method


# virtual methods
.method public injectMembers(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 115
    const-class v0, Lroboguice/inject/ViewListener$ViewMembersInjector;

    monitor-enter v0

    .line 116
    :try_start_3
    iget-object v1, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->activityProvider:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 117
    sget-object v2, Lroboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    if-eqz v2, :cond_18

    sget-object v2, Lroboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object v1, p1

    :cond_18
    if-nez v1, :cond_1c

    .line 119
    monitor-exit v0

    return-void

    .line 122
    :cond_1c
    sget-object v2, Lroboguice/inject/ViewListener$ViewMembersInjector;->viewMembersInjectors:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_30

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    sget-object v3, Lroboguice/inject/ViewListener$ViewMembersInjector;->viewMembersInjectors:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_30
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    .line 133
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method protected reallyInjectMemberFragments(Ljava/lang/Object;)V
    .registers 10

    .line 202
    iget-object v0, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 206
    :cond_9
    instance-of v1, p1, Landroid/content/Context;

    if-eqz v1, :cond_19

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_19

    .line 207
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can\'t inject fragment into a non-Activity context"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 212
    :try_start_1d
    iget-object v4, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v4, Lroboguice/inject/InjectFragment;

    .line 213
    invoke-interface {v4}, Lroboguice/inject/InjectFragment;->value()I

    move-result v5

    if-ltz v5, :cond_3d

    .line 216
    sget-object v4, Lroboguice/inject/ViewListener;->fragmentFindFragmentByIdMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->fragmentManagerProvider:Lcom/google/inject/Provider;

    invoke-interface {v6}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_3b
    move-object p1, v4

    goto :goto_52

    .line 219
    :cond_3d
    sget-object v5, Lroboguice/inject/ViewListener;->fragmentFindFragmentByTagMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->fragmentManagerProvider:Lcom/google/inject/Provider;

    invoke-interface {v6}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-interface {v4}, Lroboguice/inject/InjectFragment;->tag()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3b

    :goto_52
    if-nez p1, :cond_7a

    .line 221
    iget-object v4, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-static {v4}, Lroboguice/inject/Nullable;->notNullable(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 222
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "Can\'t inject null value into %s.%s when field is not @Nullable"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_7a
    iget-object v4, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 225
    iget-object v4, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_84
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_84} :catch_ba
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_84} :catch_b3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_84} :catch_85

    return-void

    :catch_85
    move-exception v0

    .line 234
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t assign %s value %s to %s field %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    if-eqz p1, :cond_94

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_96

    :cond_94
    const-string v7, "(null)"

    :goto_96
    aput-object v7, v6, v2

    aput-object p1, v6, v3

    iget-object p1, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v6, v1

    const/4 p1, 0x3

    iget-object v1, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, p1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_b3
    move-exception p1

    .line 231
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_ba
    move-exception p1

    .line 228
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected reallyInjectMemberViews(Ljava/lang/Object;)V
    .registers 10

    .line 158
    sget-object v0, Lroboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    if-eqz v0, :cond_e

    sget-object v0, Lroboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, p1

    goto :goto_14

    :cond_e
    iget-object v0, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_14
    if-nez v0, :cond_17

    return-void

    .line 162
    :cond_17
    instance-of v1, p1, Landroid/content/Context;

    if-eqz v1, :cond_27

    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_27

    .line 163
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can\'t inject view into a non-Activity context"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 168
    :try_start_2b
    iget-object v5, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v5, Lroboguice/inject/InjectView;

    .line 169
    invoke-interface {v5}, Lroboguice/inject/InjectView;->value()I

    move-result v6

    if-ltz v6, :cond_58

    .line 172
    sget-object v5, Lroboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    if-eqz v5, :cond_50

    sget-object v5, Lroboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    sget-object v5, Lroboguice/inject/ViewListener;->fragmentGetViewMethod:Ljava/lang/reflect/Method;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_56

    :cond_50
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_56
    move-object v1, p1

    goto :goto_86

    .line 175
    :cond_58
    sget-object v6, Lroboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    if-eqz v6, :cond_77

    sget-object v6, Lroboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    sget-object v6, Lroboguice/inject/ViewListener;->fragmentGetViewMethod:Ljava/lang/reflect/Method;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {v5}, Lroboguice/inject/InjectView;->tag()Ljava/lang/String;

    move-result-object v5

    :goto_72
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_56

    :cond_77
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v5}, Lroboguice/inject/InjectView;->tag()Ljava/lang/String;

    move-result-object v5

    goto :goto_72

    :goto_86
    if-nez v1, :cond_ae

    .line 178
    iget-object p1, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-static {p1}, Lroboguice/inject/Nullable;->notNullable(Ljava/lang/reflect/Field;)Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 179
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Can\'t inject null value into %s.%s when field is not @Nullable"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_ae
    iget-object p1, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 182
    iget-object p1, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b8
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_b8} :catch_ee
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_b8} :catch_e7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_b8} :catch_b9

    return-void

    :catch_b9
    move-exception p1

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t assign %s value %s to %s field %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    if-eqz v1, :cond_c8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_ca

    :cond_c8
    const-string v7, "(null)"

    :goto_ca
    aput-object v7, v6, v4

    aput-object v1, v6, v3

    iget-object v1, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v6, v2

    const/4 v1, 0x3

    iget-object v2, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_e7
    move-exception p1

    .line 188
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_ee
    move-exception p1

    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public reallyInjectMembers(Ljava/lang/Object;)V
    .registers 3

    .line 137
    iget-object v0, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    instance-of v0, v0, Lroboguice/inject/InjectView;

    if-eqz v0, :cond_a

    .line 138
    invoke-virtual {p0, p1}, Lroboguice/inject/ViewListener$ViewMembersInjector;->reallyInjectMemberViews(Ljava/lang/Object;)V

    goto :goto_d

    .line 140
    :cond_a
    invoke-virtual {p0, p1}, Lroboguice/inject/ViewListener$ViewMembersInjector;->reallyInjectMemberFragments(Ljava/lang/Object;)V

    :goto_d
    return-void
.end method
