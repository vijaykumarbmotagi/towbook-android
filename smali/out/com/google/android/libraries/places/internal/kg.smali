.class Lcom/google/android/libraries/places/internal/kg;
.super Ljava/util/AbstractMap;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/internal/kn;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final e:I

.field private volatile f:Lcom/google/android/libraries/places/internal/kp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/kp;"
        }
    .end annotation
.end field

.field private volatile g:Lcom/google/android/libraries/places/internal/kj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/kj;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/libraries/places/internal/kg;->e:I

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/kg;->d:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .registers 3

    .line 135
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/kg;-><init>(I)V

    return-void
.end method

.method private final a(Ljava/lang/Comparable;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_25

    .line 74
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kn;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_22

    add-int/lit8 v0, v0, 0x2

    neg-int p1, v0

    return p1

    :cond_22
    if-nez v1, :cond_25

    return v0

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-gt v1, v0, :cond_49

    add-int v2, v1, v0

    .line 80
    div-int/lit8 v2, v2, 0x2

    .line 81
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/kn;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_43

    add-int/lit8 v0, v2, -0x1

    goto :goto_26

    :cond_43
    if-lez v3, :cond_48

    add-int/lit8 v1, v2, 0x1

    goto :goto_26

    :cond_48
    return v2

    :cond_49
    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1
.end method

.method static a(I)Lcom/google/android/libraries/places/internal/kg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Lcom/google/android/libraries/places/internal/ie<",
            "TFieldDescriptorType;>;>(I)",
            "Lcom/google/android/libraries/places/internal/kg<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/kh;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/kh;-><init>(I)V

    return-object v0
.end method

.method private final f()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kg;->e()V

    .line 102
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_22

    .line 103
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    .line 104
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->d:Ljava/util/Map;

    .line 105
    :cond_22
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kg;->e()V

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/kg;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_16

    .line 37
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/kn;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 39
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kg;->e()V

    .line 40
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    instance-of v1, v1, Ljava/util/ArrayList;

    if-nez v1, :cond_30

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/libraries/places/internal/kg;->e:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    :cond_30
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 43
    iget v1, p0, Lcom/google/android/libraries/places/internal/kg;->e:I

    if-lt v0, v1, :cond_40

    .line 44
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/kg;->f()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 45
    :cond_40
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/libraries/places/internal/kg;->e:I

    if-ne v1, v2, :cond_67

    .line 46
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    iget v2, p0, Lcom/google/android/libraries/places/internal/kg;->e:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/kn;

    .line 47
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/kg;->f()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kn;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kn;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_67
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    new-instance v2, Lcom/google/android/libraries/places/internal/kn;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/libraries/places/internal/kn;-><init>(Lcom/google/android/libraries/places/internal/kg;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .registers 2

    .line 8
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/kg;->c:Z

    if-nez v0, :cond_31

    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_17

    .line 12
    :cond_11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_17
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_2c

    .line 16
    :cond_26
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_2c
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->d:Ljava/util/Map;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/kg;->c:Z

    :cond_31
    return-void
.end method

.method public final b()I
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1
.end method

.method public final c()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 22
    sget-object v0, Lcom/google/android/libraries/places/internal/kk;->b:Ljava/lang/Iterable;

    return-object v0

    .line 24
    :cond_b
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final c(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kg;->e()V

    .line 65
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kn;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 67
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/kg;->f()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    new-instance v2, Lcom/google/android/libraries/places/internal/kn;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, p0, v3}, Lcom/google/android/libraries/places/internal/kn;-><init>(Lcom/google/android/libraries/places/internal/kg;Ljava/util/Map$Entry;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_36
    return-object p1
.end method

.method public clear()V
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kg;->e()V

    .line 51
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 52
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    :cond_10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 54
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1d
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 27
    check-cast p1, Ljava/lang/Comparable;

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/kg;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method final d()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->g:Lcom/google/android/libraries/places/internal/kj;

    if-nez v0, :cond_b

    .line 94
    new-instance v0, Lcom/google/android/libraries/places/internal/kj;

    .line 95
    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/kj;-><init>(Lcom/google/android/libraries/places/internal/kg;)V

    .line 96
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->g:Lcom/google/android/libraries/places/internal/kj;

    .line 97
    :cond_b
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->g:Lcom/google/android/libraries/places/internal/kj;

    return-object v0
.end method

.method final e()V
    .registers 2

    .line 98
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/kg;->c:Z

    if-eqz v0, :cond_a

    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_a
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->f:Lcom/google/android/libraries/places/internal/kp;

    if-nez v0, :cond_b

    .line 89
    new-instance v0, Lcom/google/android/libraries/places/internal/kp;

    .line 90
    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/kp;-><init>(Lcom/google/android/libraries/places/internal/kg;)V

    .line 91
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->f:Lcom/google/android/libraries/places/internal/kp;

    .line 92
    :cond_b
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->f:Lcom/google/android/libraries/places/internal/kp;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 108
    :cond_4
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/kg;

    if-nez v1, :cond_d

    .line 109
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 110
    :cond_d
    check-cast p1, Lcom/google/android/libraries/places/internal/kg;

    .line 111
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kg;->size()I

    move-result v1

    .line 112
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kg;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 114
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kg;->b()I

    move-result v2

    .line 115
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kg;->b()I

    move-result v4

    if-eq v2, v4, :cond_32

    .line 116
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kg;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kg;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_32
    const/4 v4, 0x0

    :goto_33
    if-ge v4, v2, :cond_47

    .line 118
    invoke-virtual {p0, v4}, Lcom/google/android/libraries/places/internal/kg;->b(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/google/android/libraries/places/internal/kg;->b(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    return v3

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_47
    if-eq v2, v1, :cond_52

    .line 122
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_52
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 29
    check-cast p1, Ljava/lang/Comparable;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/kg;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_15

    .line 32
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kn;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 33
    :cond_15
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 5

    .line 125
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kg;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_18

    .line 127
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/kn;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/kn;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 130
    :cond_18
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 132
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    :cond_27
    return v2
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 134
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/kg;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kg;->e()V

    .line 57
    check-cast p1, Ljava/lang/Comparable;

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/kg;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_10

    .line 60
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/kg;->c(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 61
    :cond_10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_1a
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 3

    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
