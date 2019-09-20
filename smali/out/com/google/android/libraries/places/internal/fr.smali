.class public Lcom/google/android/libraries/places/internal/fr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcom/google/android/gms/clearcut/ClearcutLogger;

.field public final b:Lcom/google/android/libraries/places/internal/dn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;Lcom/google/android/libraries/places/internal/dn;)V
    .registers 3

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fr;->a:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 187
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/fr;->b:Lcom/google/android/libraries/places/internal/dn;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/libraries/places/internal/fp;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/gm;->p:Lcom/google/android/libraries/places/internal/gm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->f()Lcom/google/android/libraries/places/internal/ij$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/gm$b;

    .line 4
    iget-boolean v1, p1, Lcom/google/android/libraries/places/internal/fp;->d:Z

    .line 6
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 7
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/gm$b;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gm;

    .line 9
    iget v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    .line 10
    iput-boolean v1, v2, Lcom/google/android/libraries/places/internal/gm;->d:Z

    .line 14
    iget-boolean v1, p1, Lcom/google/android/libraries/places/internal/fp;->e:Z

    .line 16
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 17
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/gm$b;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gm;

    .line 19
    iget v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    .line 20
    iput-boolean v1, v2, Lcom/google/android/libraries/places/internal/gm;->e:Z

    .line 24
    iget-boolean v1, p1, Lcom/google/android/libraries/places/internal/fp;->f:Z

    .line 26
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 27
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/gm$b;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gm;

    .line 29
    iget v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    .line 30
    iput-boolean v1, v2, Lcom/google/android/libraries/places/internal/gm;->f:Z

    .line 34
    iget v1, p1, Lcom/google/android/libraries/places/internal/fp;->g:I

    .line 36
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 37
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/gm$b;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gm;

    .line 39
    iget v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    .line 40
    iput v1, v2, Lcom/google/android/libraries/places/internal/gm;->g:I

    .line 44
    iget v1, p1, Lcom/google/android/libraries/places/internal/fp;->h:I

    .line 46
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 47
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/gm$b;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gm;

    .line 49
    iget v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    .line 50
    iput v1, v2, Lcom/google/android/libraries/places/internal/gm;->h:I

    .line 54
    iget v1, p1, Lcom/google/android/libraries/places/internal/fp;->i:I

    .line 56
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 57
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/gm$b;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gm;

    .line 59
    iget v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    .line 60
    iput v1, v2, Lcom/google/android/libraries/places/internal/gm;->i:I

    .line 64
    iget v1, p1, Lcom/google/android/libraries/places/internal/fp;->j:I

    .line 66
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 67
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/gm$b;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gm;

    .line 69
    iget v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    .line 70
    iput v1, v2, Lcom/google/android/libraries/places/internal/gm;->j:I

    .line 74
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/fp;->k:Ljava/lang/String;

    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 76
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 77
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/gm$b;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gm;

    .line 79
    iget v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    .line 80
    iput v1, v2, Lcom/google/android/libraries/places/internal/gm;->k:I

    .line 84
    iget v1, p1, Lcom/google/android/libraries/places/internal/fp;->l:I

    .line 86
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 87
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/gm$b;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gm;

    .line 89
    iget v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    .line 90
    iput v1, v2, Lcom/google/android/libraries/places/internal/gm;->l:I

    .line 94
    iget v1, p1, Lcom/google/android/libraries/places/internal/fp;->m:I

    .line 96
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 97
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/gm$b;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gm;

    .line 99
    iget v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    .line 100
    iput v1, v2, Lcom/google/android/libraries/places/internal/gm;->m:I

    .line 104
    iget-boolean v1, p1, Lcom/google/android/libraries/places/internal/fp;->n:Z

    .line 106
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 107
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/gm$b;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gm;

    .line 109
    iget v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    .line 110
    iput-boolean v1, v2, Lcom/google/android/libraries/places/internal/gm;->n:Z

    .line 114
    iget v1, p1, Lcom/google/android/libraries/places/internal/fp;->o:I

    .line 116
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 117
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/gm$b;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gm;

    .line 119
    iget v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v2, Lcom/google/android/libraries/places/internal/gm;->a:I

    .line 120
    iput v1, v2, Lcom/google/android/libraries/places/internal/gm;->o:I

    .line 124
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/fp;->a:Lcom/google/android/libraries/places/internal/dv;

    .line 125
    sget-object v2, Lcom/google/android/libraries/places/internal/dv;->a:Lcom/google/android/libraries/places/internal/dv;

    if-ne v1, v2, :cond_e4

    .line 126
    sget-object v1, Lcom/google/android/libraries/places/internal/gm$c;->b:Lcom/google/android/libraries/places/internal/gm$c;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/gm$b;->a(Lcom/google/android/libraries/places/internal/gm$c;)Lcom/google/android/libraries/places/internal/gm$b;

    goto :goto_f5

    .line 128
    :cond_e4
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/fp;->a:Lcom/google/android/libraries/places/internal/dv;

    .line 129
    sget-object v2, Lcom/google/android/libraries/places/internal/dv;->b:Lcom/google/android/libraries/places/internal/dv;

    if-ne v1, v2, :cond_f0

    .line 130
    sget-object v1, Lcom/google/android/libraries/places/internal/gm$c;->c:Lcom/google/android/libraries/places/internal/gm$c;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/gm$b;->a(Lcom/google/android/libraries/places/internal/gm$c;)Lcom/google/android/libraries/places/internal/gm$b;

    goto :goto_f5

    .line 131
    :cond_f0
    sget-object v1, Lcom/google/android/libraries/places/internal/gm$c;->a:Lcom/google/android/libraries/places/internal/gm$c;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/gm$b;->a(Lcom/google/android/libraries/places/internal/gm$c;)Lcom/google/android/libraries/places/internal/gm$b;

    .line 133
    :goto_f5
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/fp;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 134
    sget-object v2, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->FULLSCREEN:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    if-ne v1, v2, :cond_101

    .line 135
    sget-object p1, Lcom/google/android/libraries/places/internal/gm$a;->b:Lcom/google/android/libraries/places/internal/gm$a;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/gm$b;->a(Lcom/google/android/libraries/places/internal/gm$a;)Lcom/google/android/libraries/places/internal/gm$b;

    goto :goto_10c

    .line 137
    :cond_101
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/fp;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 138
    sget-object v1, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->OVERLAY:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    if-ne p1, v1, :cond_10c

    .line 139
    sget-object p1, Lcom/google/android/libraries/places/internal/gm$a;->a:Lcom/google/android/libraries/places/internal/gm$a;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/gm$b;->a(Lcom/google/android/libraries/places/internal/gm$a;)Lcom/google/android/libraries/places/internal/gm$b;

    .line 145
    :cond_10c
    :goto_10c
    iget-boolean p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_114

    .line 146
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_11d

    .line 147
    :cond_114
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 148
    iput-boolean v1, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 149
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 150
    :goto_11d
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 151
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v0

    if-nez v0, :cond_12b

    .line 153
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 154
    throw p1

    .line 156
    :cond_12b
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    check-cast p1, Lcom/google/android/libraries/places/internal/gm;

    .line 157
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fr;->b:Lcom/google/android/libraries/places/internal/dn;

    .line 158
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dm;->a(Lcom/google/android/libraries/places/internal/dn;)Lcom/google/android/libraries/places/internal/gr$a;

    move-result-object v0

    sget-object v2, Lcom/google/android/libraries/places/internal/gr$b;->d:Lcom/google/android/libraries/places/internal/gr$b;

    .line 159
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/gr$a;->a(Lcom/google/android/libraries/places/internal/gr$b;)Lcom/google/android/libraries/places/internal/gr$a;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 162
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/gr$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gr;

    if-nez p1, :cond_14a

    .line 165
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 166
    :cond_14a
    iput-object p1, v2, Lcom/google/android/libraries/places/internal/gr;->i:Lcom/google/android/libraries/places/internal/gm;

    .line 167
    iget p1, v2, Lcom/google/android/libraries/places/internal/gr;->a:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, v2, Lcom/google/android/libraries/places/internal/gr;->a:I

    .line 171
    iget-boolean p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz p1, :cond_159

    .line 172
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_162

    .line 173
    :cond_159
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 174
    iput-boolean v1, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 175
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 176
    :goto_162
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 177
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v0

    if-nez v0, :cond_170

    .line 179
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 180
    throw p1

    .line 182
    :cond_170
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    check-cast p1, Lcom/google/android/libraries/places/internal/gr;

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fr;->a(Lcom/google/android/libraries/places/internal/gr;)V

    return-void
.end method

.method public a(Lcom/google/android/libraries/places/internal/gr;)V
    .registers 3

    .line 189
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dm;->a(Lcom/google/android/libraries/places/internal/gr;)Lcom/google/android/libraries/places/internal/fu$a;

    move-result-object p1

    .line 190
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fr;->a:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/hj;->c()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->log()V

    return-void
.end method
