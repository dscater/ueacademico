@if (Auth::user()->id == $mensaje->emisor_id)
    <div class="mensaje derecha" data-id="{{ $mensaje->id }}">
        <div class="texto">
            <p class="usuario">Tú</p>
            <p>{{ $mensaje->mensaje }}</p>
            <span class="fecha">{{ $mensaje->created_at->diffForHumans() }}</span>
        </div>
        @if (Auth::user()->tipo != 'TUTOR')
            <div class="foto"><img src="{{ asset('imgs/users/' . $mensaje->emisor->foto) }}" alt=""></div>
        @else
            <div class="foto"><img src="{{ asset('imgs/users/user_default.png') }}" alt=""></div>
        @endif
    </div>
@else
    <div class="mensaje" data-id="{{ $mensaje->id }}">
        @if (Auth::user()->tipo != 'TUTOR')
            <div class="foto"><img src="{{ asset('imgs/users/' . $mensaje->emisor->foto) }}" alt=""></div>
        @else
            <div class="foto"><img src="{{ asset('imgs/users/user_default.png') }}" alt=""></div>
        @endif
        <div class="texto">
            @if ($mensaje->emisor->tipo != 'TUTOR')
                <p class="usuario">{{ $mensaje->emisor->profesor->full_name }}</p>
            @else
                <p class="usuario">Tutor</p>
            @endif
            <p>{{ $mensaje->mensaje }}</p>
            <span class="fecha">{{ $mensaje->created_at->diffForHumans() }}</span>
        </div>
    </div>
@endif
