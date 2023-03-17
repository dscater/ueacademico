<li class="nav-item">
    <a href="{{ route('desempeno_estudiantes.index') }}?id={{ Auth::user()->id }}"
        class="nav-link {{ request()->is('desempeno_estudiantes*') ? 'active' : '' }}">
        <i class="nav-icon fas fa-list-alt"></i>
        <p>Desempeño académico</p>
    </a>
</li>