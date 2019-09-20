.class public final Lcom/google/android/libraries/places/internal/he$a;
.super Lcom/google/android/libraries/places/internal/ij$a;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/he;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/ij$a<",
        "Lcom/google/android/libraries/places/internal/he;",
        "Lcom/google/android/libraries/places/internal/he$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/jq;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 2
    sget-object v0, Lcom/google/android/libraries/places/internal/he;->b:Lcom/google/android/libraries/places/internal/he;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/ij$a;-><init>(Lcom/google/android/libraries/places/internal/ij;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/he$a;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/internal/he$a;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/he$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v0, Lcom/google/android/libraries/places/internal/he;

    .line 9
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/he;->a:Lcom/google/android/libraries/places/internal/iq;

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/iq;->a()Z

    move-result v1

    if-nez v1, :cond_17

    .line 10
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/he;->a:Lcom/google/android/libraries/places/internal/iq;

    .line 11
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/ij;->a(Lcom/google/android/libraries/places/internal/iq;)Lcom/google/android/libraries/places/internal/iq;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/he;->a:Lcom/google/android/libraries/places/internal/iq;

    .line 12
    :cond_17
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/he;->a:Lcom/google/android/libraries/places/internal/iq;

    .line 14
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/il;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/iz;

    const/16 v2, 0x25

    if-eqz v1, :cond_7e

    .line 16
    check-cast p1, Lcom/google/android/libraries/places/internal/iz;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/iz;->d()Ljava/util/List;

    move-result-object p1

    .line 17
    move-object v1, v0

    check-cast v1, Lcom/google/android/libraries/places/internal/iz;

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6e

    .line 21
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/iz;->size()I

    move-result p1

    sub-int/2addr p1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Element at index "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/iz;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_60
    if-lt v2, v0, :cond_68

    .line 23
    invoke-interface {v1, v2}, Lcom/google/android/libraries/places/internal/iz;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_60

    .line 25
    :cond_68
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_6e
    instance-of v4, v3, Lcom/google/android/libraries/places/internal/hq;

    if-eqz v4, :cond_78

    .line 27
    check-cast v3, Lcom/google/android/libraries/places/internal/hq;

    invoke-interface {v1, v3}, Lcom/google/android/libraries/places/internal/iz;->a(Lcom/google/android/libraries/places/internal/hq;)V

    goto :goto_33

    .line 28
    :cond_78
    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/google/android/libraries/places/internal/iz;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 31
    :cond_7e
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/jy;

    if-eqz v1, :cond_88

    .line 32
    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_e9

    .line 34
    :cond_88
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_a2

    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_a2

    .line 35
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move-object v4, p1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 36
    :cond_a2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 37
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_aa
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_e5

    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Element at index "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_d7
    if-lt v2, v1, :cond_df

    .line 41
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_d7

    .line 43
    :cond_df
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_e5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    :cond_e9
    :goto_e9
    return-object p0
.end method
