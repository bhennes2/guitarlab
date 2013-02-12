require 'test_helper'

class SongsControllerTest < ActionController::TestCase
  setup do
    @song = songs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:songs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create song" do
    assert_difference('Song.count') do
      post :create, song: { artist: @song.artist, capo: @song.capo, chords: @song.chords, lyrics: @song.lyrics, lyrics_and_chords: @song.lyrics_and_chords, original_album: @song.original_album, original_year: @song.original_year, parts: @song.parts, special_notes: @song.special_notes, title: @song.title, tuning: @song.tuning, url: @song.url, version: @song.version, version_album: @song.version_album, version_year: @song.version_year }
    end

    assert_redirected_to song_path(assigns(:song))
  end

  test "should show song" do
    get :show, id: @song
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @song
    assert_response :success
  end

  test "should update song" do
    put :update, id: @song, song: { artist: @song.artist, capo: @song.capo, chords: @song.chords, lyrics: @song.lyrics, lyrics_and_chords: @song.lyrics_and_chords, original_album: @song.original_album, original_year: @song.original_year, parts: @song.parts, special_notes: @song.special_notes, title: @song.title, tuning: @song.tuning, url: @song.url, version: @song.version, version_album: @song.version_album, version_year: @song.version_year }
    assert_redirected_to song_path(assigns(:song))
  end

  test "should destroy song" do
    assert_difference('Song.count', -1) do
      delete :destroy, id: @song
    end

    assert_redirected_to songs_path
  end
end
